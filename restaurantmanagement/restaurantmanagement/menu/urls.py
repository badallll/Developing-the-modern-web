from django.urls import path
from .import views

urlpatterns = [
    path('category_form', views.category_form),
    path('get_category', views.get_category),
    path('delete_category/<int:category_id>', views.delete_category),
    path('update_category/<int:category_id>', views.category_update_form),
     #URL for Food Form
    path('food_form', views.food_form),
    path('get_food', views.get_food, name="food"),
    path('delete_food/<int:food_id>', views.delete_food),
    path('update_food/<int:food_id>', views.food_update_form),
    path('get_category_user', views.show_categories),
    path('get_food_user', views.show_foods),
    #URL for menu
    path('menu', views.menu),
    #URL for menu
    path('add_to_cart/<int:food_id>', views.add_to_cart),
    path('mycart', views.show_cart_items),
    path('remove_cart_item/<int:cart_id>', views.remove_cart_item),
    #URL for ordering
    path('order_form/<int:food_id>/<int:cart_id>', views.order_form),
    path('my_order', views.my_order),
    path('update_status/<int:order_id>', views.update_order , name='status'),
    path('esewa_verify', views.esewa_verify),
]