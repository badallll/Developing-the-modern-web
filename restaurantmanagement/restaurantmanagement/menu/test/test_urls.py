from django.test import SimpleTestCase
from django.urls import reverse, resolve
from menu.views import get_food


class TestUrls(SimpleTestCase):
    def test_getfood_url(self):
        url = reverse('food')
        self.assertEqual(resolve(url).func, get_food)

