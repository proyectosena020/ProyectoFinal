from rest_framework import serializers
from .models import Categoria, Usuario, Sitio
from .models import Habitacion, Imagen, Servicio
from .models import Seguridad, Regla, Favorito
from .models import Comentario, Reserva, Pago
from .models import ReglaAdicional


class CategoriaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categoria
        fields = (
            "nombre",
            "icono",
            "imagen",
        )


class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = (
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


class SitioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sitio
        fields = (
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


class HabitacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Habitacion
        fields = (
            "titulo",
            "descripcion",
            "sitio"
        )


class ImagenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Imagen
        fields = (
            "direccion",
            "sitio",
        )


class ServicioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Servicio
        fields = (
            "icono",
            "nombre",
            "descripcion",
            "sitio",
        )


class SeguridadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Seguridad
        fields = (
            "icono",
            "nombre",
            "sitio",
        )


class ReglaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Regla
        fields = (
            "icono",
            "nombre",
            "sitio",
        )


class FavoritoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Favorito
        fields = (
            "usuario",
            "sitio",
        )


class ComentarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comentario
        fields = (
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


class ReservaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reserva
        fields = (
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


class PagoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pago
        fields = (
            "fechaRadicado",
            "fechaPago",
            "medioPago",
            "estado",
            "usuario",
            "sitio",
            "reserva",
        )


class ReglaAdicionalSerializer (serializers.ModelSerializer):
    class Meta:
        model = ReglaAdicional
        fields = (
            "icono",
            "descripcion",
            "sitio",
        )
