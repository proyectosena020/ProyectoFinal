from django.urls import path
from .views import CategoriaListApiView, CategoriaDetailApiView
from .views import UsuarioListApiView, UsuarioDetailApiView
from .views import SitioListApiView, SitioDetailApiView
from .views import SitioVisitadoListApiView, SitioVisitadoDetailApiView
from .views import HabitacionListApiView, HabitacionDetailApiView
from .views import ImagenListApiView, ImagenDetailApiView
from .views import ServicioListApiView, ServicioDetailApiView
from .views import SeguridadListApiView, SeguridadDetailApiView
from .views import ReglaListApiView, ReglaDetailApiView
from .views import ComentarioListApiView, ComentarioDetailApiView
from .views import FavoritoListApiView, FavoritoDetailApiView
from .views import ReservaListApiView, ReservaDetailApiView
from .views import PagoAnfitrionListApiView, PagoAnfitrionDetailApiView
from .views import PagoListApiView, PagoDetailApiView
from .views import MultaListApiView, MultaDetailApiView

urlpatterns = [
    path('categoria/', CategoriaListApiView.as_view(), name="Categoria_list"),
    path('categoria/<int:categoria_id>', CategoriaDetailApiView.as_view(), name="Categoria_detail"),
    path('usuario/', UsuarioListApiView.as_view(), name="Usuario_list"),
    path('usuario/<int:usuario_id>', UsuarioDetailApiView.as_view(), name="Usuario_detail"),
    path('sitio/', SitioListApiView.as_view(), name="Sitio_list"),
    path('sitio/<int:sitio_id>', SitioDetailApiView.as_view(), name="Sitio_detail"),
    path('sitiosVisitados/', SitioVisitadoListApiView.as_view(), name="SitioVisitado_list"),
    path('sitiosVisitados/<int:sitiosVisitados_id>', SitioVisitadoDetailApiView.as_view(), name="SitioVisitado_detail"),
    path('habitacion/', HabitacionListApiView.as_view(), name="Habitacion_list"),
    path('habitacion/<int:habitacion_id>', HabitacionDetailApiView.as_view(), name="Habitacion_detail"),
    path('imagen/', ImagenListApiView.as_view(), name="Imagen_list"),
    path('imagen/<int:imagen_id>', ImagenDetailApiView.as_view(), name="Imagen_detail"),
    path('servicio/', ServicioListApiView.as_view(), name="Servicio_list"),
    path('servicio/<int:servicio_id>', ServicioDetailApiView.as_view(), name="Servicio_detail"),
    path('seguridad/', SeguridadListApiView.as_view(), name="Seguridad_list"),
    path('seguridad/<int:seguridad_id>', SeguridadDetailApiView.as_view(), name="Seguridad_detail"),
    path('regla/', ReglaListApiView.as_view(), name="Regla_list"),
    path('regla/<int:regla_id>', ReglaDetailApiView.as_view(), name="Regla_detail"),
    path('comentario/', ComentarioListApiView.as_view(), name="Comentario_list"),
    path('comentario/<int:comentario_id>', ComentarioDetailApiView.as_view(), name="Comentario_detail"),
    path('favorito/', FavoritoListApiView.as_view(), name="Favorito_list"),
    path('favorito/<int:favorito_id>', FavoritoDetailApiView.as_view(), name="Favorito_detail"),
    path('reserva/', ReservaListApiView.as_view(), name="Reserva_list"),
    path('reserva/<int:reserva_id>', ReservaDetailApiView.as_view(), name="Reserva_detail"),
    path('pagoAnfitrion/', PagoAnfitrionListApiView.as_view(), name="PagoAnfitrion_list"),
    path('pagoAnfitrion/<int:pagoAnfitrion_id>', PagoAnfitrionDetailApiView.as_view(), name="PagoAnfitrion_detail"),
    path('pago/', PagoListApiView.as_view(), name="Pago_list"),
    path('pago/<int:pago_id>', PagoDetailApiView.as_view(), name="Pago_detail"),
    path('multa/', MultaListApiView.as_view(), name="Multa_list"),
    path('multa/<int:multa_id>', MultaDetailApiView.as_view(), name="Multa_detail"),
]