from django.urls import path
from .views import CategoriaListApiView, CategoriaDetailApiView
from .views import UsuarioListApiView, UsuarioDetailApiView
from .views import SitioListApiView, SitioDetailApiView
from .views import HabitacionListApiView, HabitacionDetailApiView
from .views import ImagenListApiView, ImagenDetailApiView
from .views import ServicioListApiView, ServicioDetailApiView
from .views import SeguridadListApiView, SeguridadDetailApiView
from .views import ReglaListApiView, ReglaDetailApiView
from .views import FavoritoListApiView, FavoritoDetailApiView
from .views import ComentarioListApiView, ComentarioDetailApiView
from .views import ReservaListApiView, ReservaDetailApiView
from .views import PagoListApiView, PagoDetailApiView
from .views import ReglaAdicionalListApiView, ReglaAdicionalDetailApiView

urlpatterns = [
    path('categoria/', CategoriaListApiView.as_view(), name="Categoria_List"),
    path('categoria/<int:categoria_id>/',
         CategoriaDetailApiView.as_view(), name="Categoria_Detail"),
    path('usuario/', UsuarioListApiView.as_view(), name="Usuario_List"),
    path('usuario/<int:usuario_id>/',
         UsuarioDetailApiView.as_view(), name="Usuario_Detail"),
    path('sitio/', SitioListApiView.as_view(), name="Sitio_List"),
    path('sitio/<int:sitio_id>/',
         SitioDetailApiView.as_view(), name="Sitio_Detail"),
    path('habitacion/', HabitacionListApiView.as_view(), name="Habitacion_List"),
    path('habitacion/<int:habitacion_id>/',
         HabitacionDetailApiView.as_view(), name="Habitacion_Detail"),
    path('imagen/', ImagenListApiView.as_view(), name="Imagen_List"),
    path('imagen/<int:imagen_id>/',
         ImagenDetailApiView.as_view(), name="Imagen_Detail"),
    path('servicio/', ServicioListApiView.as_view(), name="Servicio_List"),
    path('servicio/<int:servicio_id>/',
         ServicioDetailApiView.as_view(), name="Servicio_Detail"),
    path('seguridad/', SeguridadListApiView.as_view(), name="Seguridad_List"),
    path('seguridad/<int:seguridad_id>/',
         SeguridadDetailApiView.as_view(), name="Seguridad_Detail"),
    path('regla/', ReglaListApiView.as_view(), name="Regla_List"),
    path('regla/<int:regla_id>/',
         ReglaDetailApiView.as_view(), name="Regla_Detail"),
    path('favorito/', FavoritoListApiView.as_view(), name="Favorito_List"),
    path('favorito/<int:favorito_id>/',
         FavoritoDetailApiView.as_view(), name="Favorito_Detail"),
    path('comentario/', ComentarioListApiView.as_view(), name="Comentario_List"),
    path('comentario/<int:comentario_id>/',
         ComentarioDetailApiView.as_view(), name="Comentario_Detail"),
    path('reserva/', ReservaListApiView.as_view(), name="Reserva_List"),
    path('reserva/<int:reserva_id>/',
         ReservaDetailApiView.as_view(), name="Reserva_Detail"),
    path('pago/', PagoListApiView.as_view(), name="Pago_List"),
    path('pago/<int:pago_id>/',
         PagoDetailApiView.as_view(), name="Pago_Detail"),
    path('reglaA/', ReglaAdicionalListApiView.as_view(), name="ReglaAdicional_List"),
    path('reglaA/<int:reglaAdicional_id>/',
         ReglaAdicionalDetailApiView.as_view(), name="ReglaAdicional_Detail"),
]
