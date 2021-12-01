from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth.models import User
from .models import Profile, gallery
from django.forms import ModelForm

#user login form
class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)

#user creation form
class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']
#form for profile
class ProfileForm(ModelForm):
    class Meta:
        model = Profile
        fields = '__all__'
        exclude = ['user', 'username','email']
#form for gallery
class GalleryForm(ModelForm):
    class Meta:
        model = gallery
        fields = '__all__'
        exclude = ['date']





