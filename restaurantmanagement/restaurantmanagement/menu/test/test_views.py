from django import setup
from django.test.testcases import TestCase, Client
from django.urls import reverse
from home.views import login_user
from django.test import RequestFactory, TestCase
from home.views import homepage
from django.contrib.auth.models import User




class TestViews(TestCase):
    def setUp(self):
        self.login = reverse("login")



    def test_login(self):
        response = self.client.get(self.login)
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'home/login.html')


# static file image user
    def test_environment_set_in_context(self):
        print("testing images")
        request = RequestFactory().get('/static/images/')
        view = homepage(request)

#testing of user
    def test_all(self):
        print("testing all field")
        abc = User.objects.all()
        self.assertEqual(abc.count(), 0)

#testing of homepage
    def test_home_page_status_code(self):
        print("testing the status code")
        response = self.client.get('/')
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'home/homepage.html')
