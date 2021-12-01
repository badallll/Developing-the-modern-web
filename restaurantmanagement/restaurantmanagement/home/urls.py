from django.urls import path
from .import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.homepage),
    path('homepage', views.homepage),
    path('gallery', views.add_gallery),
    path('show_gallery', views.show_gallery),
    path('login', views.login_user, name='login'),
    path('register', views.register_user, name='register'),
    #URL for login, register and logout
    path('login', views.login_user),
    path('register', views.register_user),
    path('logout', views.logout_user),
    path('profile', views.profile, name="profile"),

    # reset password url
    path('reset_password/', auth_views.PasswordResetView.as_view(
        template_name='home/password_reset.html'), name='reset_password'),
    path('reset_email_sent/', auth_views.PasswordResetDoneView.as_view(
        template_name='home/password_reset_done.html'), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(
        template_name='home/password_reset_confirm.html'), name='password_reset_confirm'),
    path('reset_complete/', auth_views.PasswordResetCompleteView.as_view(
        template_name='home/password_reset_complete.html'), name='password_reset_complete'),
]