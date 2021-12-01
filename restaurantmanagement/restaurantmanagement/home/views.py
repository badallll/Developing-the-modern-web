from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages

from admins import models
from .forms import LoginForm, ProfileForm
from home.auth import unauthenticated_user, admin_only, user_only
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .forms import CreateUserForm, GalleryForm
from .models import Profile, gallery
from menu. models import Order
from django.core.paginator import Paginator


# Function define for HomePage
def homepage(request):
    return render(request,'home/homepage.html')

# Function define for logout
@login_required
def logout_user(request):
    logout(request)
    return redirect('/login')


# Function define for Login
@unauthenticated_user
def login_user(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            user = authenticate(request, username=data['username'], password= data['password'])
            if user is not None:
                if user.is_staff:
                    login(request, user)
                    return redirect('admins/')
                elif not user.is_staff:
                    login(request,user)
                    return redirect('/homepage')

            else:
                messages.add_message(request, messages.ERROR, "Invalid User Credentials")
                return render(request, 'home/login.html', {'form_login': form})
    context = {
        'form_login': LoginForm,
        'activate_login': 'active'
    }
    return render(request, 'home/login.html', context)


# Function define for register
@unauthenticated_user
def register_user(request):
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.save()
            Profile.objects.create(user=user, username=user.username, email=user.email)
            messages.add_message(request, messages.SUCCESS, 'Registered successfully')
            return redirect('/login')
        else:
            messages.add_message(request, messages.ERROR, 'Unable to registered ')
            return render(request, 'home/register.html', {'form_register': form})

    context = {
        'form_register': CreateUserForm,
        'activate_register': 'active'
    }
    return render(request, 'home/register.html', context)

#profile creation
@login_required
@user_only
def profile(request):
    profile = request.user.profile
    if request.method == "POST":
        form = ProfileForm(request.POST, request.FILES, instance=profile)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Profile updated successfully")
            return redirect('/profile')
    context = {
        'form': ProfileForm(instance=profile),
        'activate_profile': 'active'
    }
    return render(request, 'home/profile.html', context)


#gallery adding function
def add_gallery(request):
    if request.method == "POST":
        form = GalleryForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "Gallery added successfully")
            return redirect('/gallery')
    else:
        form = GalleryForm()
    context = {
        'form_gallery': form,
        'activate_gallery': 'active'
    }
    return render(request, 'home/addgallery.html', context)

#gallery views function in uer pannel
def show_gallery(request):
    photos = gallery.objects.all().order_by('-date')

    context = {'gallery': photos}
    return render(request, 'home/gallery.html', context)



