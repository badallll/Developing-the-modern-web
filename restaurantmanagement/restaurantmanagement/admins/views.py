from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.shortcuts import render, redirect
from menu.models import Order
from menu.models import Category,Food
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from django.contrib import messages

# Dashboard to display order food in admin pannel
def dashboard(request):
    orders = Order.objects.filter(status='pending').order_by('-created_date')
    context = {'orders': orders}
    return render(request, 'admins/dashboard.html', context)

# changing the password
def change_password(request):
    if request.method == "POST":
        form = PasswordChangeForm(request.user,request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            messages.add_message(request, messages.SUCCESS, 'Password Changed Successfully')
            if request.user.is_staff:
                return redirect('/admins')
            else:
                return redirect('/home')
        else:
            messages.add_message(request, messages.ERROR, 'Please verify the form fields')
            return render(request, 'admins/change_password.html', {'password_change_form':form})
    context = {
        'password_change_form':PasswordChangeForm(request.user)
    }
    return render(request, 'admins/change_password.html', context)




# Admin Dashboard
def admin_dashboard(request):
    user = User.objects.filter(is_staff=0)
    user_count = user.count()
    admin = User.objects.filter(is_staff=1)
    admin_count = admin.count()
    category = Category.objects.all()
    category_count = category.count()
    food = Food.objects.all()
    food_count = food.count()
    context ={

        'user': user_count,
        'admin': admin_count,
        'category': category_count,
        'food': food_count

    }
    return render(request, 'admins/admindashboard.html', context)
# user detail
def show_users(request):
    users = User.objects.filter(is_staff=0).order_by('-id')
    context = {
        'users': users
    }
    return render(request, 'admins/users.html', context)

# admins details
def show_admins(request):
    admins = User.objects.filter(is_staff=1).order_by('-id')
    context = {
        'admins': admins
    }
    return render(request, 'admins/admins.html', context)


# promoting user into admin
def promote_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User promoted to admin')
    return redirect('/admins/admins')


# Demoting admin to user
def demote_admin(request, user_id):
    admin = User.objects.get(id=user_id)
    admin.is_staff = False
    admin.save()
    messages.add_message(request, messages.SUCCESS, 'Admin demoted to user')
    return redirect('/admins/users')