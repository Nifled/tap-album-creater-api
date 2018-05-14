from django.urls import path

from .views import AlbumListCreate


urlpatterns = [
    path('albums', AlbumListCreate.as_view())
]
