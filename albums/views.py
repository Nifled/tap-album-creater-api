from rest_framework import generics

from .models import Album
from .serializers import AlbumSerializer


class AlbumListCreate(generics.ListCreateAPIView):
    queryset = Album.objects.all()
    serializer_class = AlbumSerializer
