from django.test.testcases import TestCase
from home.models import Profile
from home.models import gallery
class TestModels(TestCase):
    def setUp(self):
        pass

    def test_profile(self):
        profile = Profile.objects.create(
            firstname= "profile",
            created_date = "2021/12/1"
        )
        self.assertIsNotNone(Profile.objects.filter(firstname="profile"))



