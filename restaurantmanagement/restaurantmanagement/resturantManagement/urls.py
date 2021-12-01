
from django.urls import path, include


urlpatterns = [
    path('menu/', include('menu.urls')),
    path('admins/', include('admins.urls')),
    path('home/', include('home.urls')),
    path('', include('home.urls'))
]
