from django.db import models


class Album(models.Model):
    artist = models.CharField(max_length=50)
    title = models.CharField(max_length=200)
    genre = models.CharField(max_length=100)
    cover_url = models.TextField()

    def __str__(self):
        return '{} - {}'.format(self.title, self.artist)
