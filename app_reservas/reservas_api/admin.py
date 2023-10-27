from django.contrib import admin
from .models import Categoria, Usuario, Sitio
from .models import SitiosVisitados, Habitacion, Imagen
from .models import Servicio, Seguridad, Regla
from .models import Comentario, Favorito, Reserva
from .models import PagoAnfitrion, Pago, Multa

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
        "numeroDocumento",
        "correoElectronico",
        "telefono",
        "telefonoCelular",
        "idioma",
        "foto",
        "rolAdmin",
        "descripcion",
        "banco",
        "numeroCuenta",
        "daviplata",
        "fechaRegistro",
        "tiempo",
        "calificacion",
    )

admin.site.register(Usuario, UsuarioAdmin)

class SitioAdmin(admin.ModelAdmin):
    list_display = (
        "usuario",
        "titulo",
        "numHuespedes",
        "numCamas",
        "numBanos",
        "acercaEspacio",
        "espacio",
        "accesoHuespedes",
        "aspectosDestacar",
        "numeroRegistro",
        "valorNoche",
        "lugar",
        "desLugar",
        "direccion",
        "continente",
        "valorLimpieza",
        "comision",
        "politica",
        "categoria",
    )

admin.site.register(Sitio, SitioAdmin)

class SitiosVisitadosAdmin(admin.ModelAdmin):
    list_display = (
        "fechaVista",
        "sitio",
        "usuario",
    )

admin.site.register(SitiosVisitados, SitiosVisitadosAdmin)

class HabitacionAdmin(admin.ModelAdmin):
    list_display = (
        "titulo",
        "descripcion",
        "sitio",
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
        "descripcion",
        "sitio",
    )

admin.site.register(Seguridad, SeguridadAdmin)

class ReglaAdmin(admin.ModelAdmin):
    list_display = (
       "descripcion",
       "sitio",
    )

admin.site.register(Regla, ReglaAdmin)

class ComentarioAdmin(admin.ModelAdmin):
    list_display = (
        "usuario",
        "calLimpieza",
        "calComunicacion",
        "calLlegada",
        "calFiabilidad",
        "calUbicacion",
        "calPrecio",
        "descripcion",
        "sitio",
    )

admin.site.register(Comentario, ComentarioAdmin)

class FavoritoAdmin(admin.ModelAdmin):
    list_display = (
        "usuario",
        "sitio",
    )

admin.site.register(Favorito, FavoritoAdmin)

class ReservaAdmin(admin.ModelAdmin):
    list_display = (
        "usuario",
        "fecha",
        "fechaEntrada",
        "fechaSalida",
        "numAdultos",
        "numNinos",
        "numBebes",
        "numMascotas",
        "precioFinal",
        "estado",
        "comision",
        "gananciaAnfitrion",
        "sitio",
    )

admin.site.register(Reserva, ReservaAdmin)  

class PagoAnfitrionAdmin(admin.ModelAdmin):
    list_display = (
        "fechaRadicado",
        "fechaPago",
        "medioPago",
        "estado",
        "reserva",
    )

admin.site.register(PagoAnfitrion, PagoAnfitrionAdmin)  

class PagoAdmin(admin.ModelAdmin):
    list_display = (
        "fechaPago",
        "medioPago",
        "estado",
        "reserva",
    )

admin.site.register(Pago, PagoAdmin) 

class MultaAdmin(admin.ModelAdmin):
    list_display = (
        "fecha",
        "valor",
        "valorDevolucion",
        "reserva",
    )

admin.site.register(Multa, MultaAdmin) 