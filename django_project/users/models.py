from django.db import models
from django.contrib.auth.models import User


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE) # if user is deleted, delete profile , not vice versa
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self): # dunder method to return string representation of object
        return f'{self.user.username} Profile'
