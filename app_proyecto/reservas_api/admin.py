from django.contrib import admin
from .models import Categoria, Usuario, Sitio
from .models import Habitacion, Imagen, Servicio
from .models import Seguridad, Regla, Favorito
from .models import Comentario, Reserva, Pago
from .models import ReglaAdicional

# Register your models here.
class CategoriaAdmin(admin.ModelAdmin):
    list_display = (
        "nombre",
        "icono",
        "imagen",
    )

admin.site.register(Categoria, CategoriaAdmin)

class UsuarioAdmin(admin.ModelAdmin):
    list_display = (
        "nombreCompleto",
        "tipoDocumento",
        "numDocumento",
        "correo",
        "telefono",
        "telefonoCel",
        "idioma",
        "foto",
        "descripcion",
        "cuentaBancaria",
        "banco",
        "daviplata",
        "rolAdmin",
        "rolAnfi",
    )

admin.site.register(Usuario, UsuarioAdmin)

class SitioAdmin(admin.ModelAdmin):
    list_display = (
        "titulo",
        "huespedes",
        "camas",
        "baños",
        "acercaEspacio",
        "espacio",
        "accesoHuesped",
        "aspectoDestacar",
        "numRegistro",
        "lugar",
        "lugarDes",
        "direccion",
        "continente",
        "valorNoche",
        "valorLimpieza",
        "comision",
        "politica",
        "categoria",
        "usuario",
    )

admin.site.register(Sitio, SitioAdmin)

class HabitacionAdmin(admin.ModelAdmin):
    list_display = (
        "titulo",
        "descripcion",
        "sitio"
    )

admin.site.register(Habitacion, HabitacionAdmin)

class ImagenAdmin(admin.ModelAdmin):
    list_display = (
        "direccion",
        "sitio",
    )

admin.site.register(Imagen, ImagenAdmin)

class ServicioAdmin(admin.ModelAdmin):
    list_display = (
        "icono",
        "nombre",
        "descripcion",
        "sitio",
    )

admin.site.register(Servicio, ServicioAdmin)

class SeguridadAdmin(admin.ModelAdmin):
    list_display = (
        "icono",
        "nombre",
        "sitio"
    )

admin.site.register(Seguridad, SeguridadAdmin)

class ReglaAdmin(admin.ModelAdmin):
    list_display = (
        "icono",
        "nombre",
        "sitio"
    )

admin.site.register(Regla, ReglaAdmin)

class FavoritoAdmin(admin.ModelAdmin):
    list_display = (
        "usuario",
        "sitio",
    )

admin.site.register(Favorito, FavoritoAdmin)

class ComentarioAdmin(admin.ModelAdmin):
    list_display = (
        "calLimpieza",
        "calComunicacion",
        "calLlegada",
        "calFiabilidad",
        "calUbicacion",
        "calPrecio",
        "descripcion",
        "usuario",
        "sitio",
    )

admin.site.register(Comentario, ComentarioAdmin)

class ReservaAdmin(admin.ModelAdmin):
    list_display = (
        "fecha",
        "fechaEntrada",
        "fechaSalida",
        "numAdultos",
        "numNiños",
        "numBebes",
        "numMascotas",
        "medioPago",
        "estado",
        "precioFinal",
        "comision",
        "gananciaAnf",
        "usuario",
        "sitio",
    )

admin.site.register(Reserva, ReservaAdmin)

class PagoAdmin(admin.ModelAdmin):
    list_display = (
        "fechaRadicado",
        "fechaPago",
        "medioPago",
        "estado",
        "usuario",
        "sitio",
        "reserva",
    )

admin.site.register(Pago, PagoAdmin)

class ReglaAdicionalAdmin(admin.ModelAdmin):
    list_display = (
        "icono",
        "descripcion",
        "sitio",
    )

admin.site.register(ReglaAdicional, ReglaAdicionalAdmin)