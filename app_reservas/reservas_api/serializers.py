from rest_framework import serializers
from .models import Categoria, Usuario, Sitio
from .models import SitiosVisitados, Habitacion, Imagen
from .models import Servicio, Seguridad, Regla
from .models import Comentario, Favorito, Reserva
from .models import PagoAnfitrion, Pago, Multa


class CategoriaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categoria
        fields = (
            "id"
            "nombre",
            "icono",
            "imagen",
        )


class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = (
            "id",
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
            "fechaRegistro"
            "tiempo",
            "calificacion",
        )


class SitioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sitio
        fields = (
            "id",
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


class SitiosVisitadosSerializer(serializers.ModelSerializer):
    class Meta:
        model = SitiosVisitados
        fields = (
            "id",
            "fechaVista",
            "sitio",
            "usuario",
        )


class HabitacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Habitacion
        fields = (
            "id",
            "titulo",
            "descripcion",
            "sitio",
        )


class ImagenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Imagen
        fields = (
            "id",
            "direccion",
            "sitio",
        )


class ServicioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Servicio
        fields = (
            "id",
            "icono",
            "nombre",
            "descripcion",
            "sitio",
        )


class SeguridadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Seguridad
        fields = (
            "id",
            "descripcion",
            "sitio",
        )


class ReglaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Regla
        fields = (
            "id",
            "descripcion",
            "sitio",
        )


class ComentarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comentario
        fields = (
            "id",
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


class FavoritoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Favorito
        fields = (
            "id",
            "usuario",
            "sitio",
        )


class ReservaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reserva
        fields = (
            "id",
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


class PagoAnfitrionSerializer(serializers.ModelSerializer):
    class Meta:
        model = PagoAnfitrion
        fields = (
            "id",
            "fechaRadicado",
            "fechaPago",
            "medioPago",
            "estado",
            "reserva",
        )


class PagoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pago
        fields = (
            "id",
            "fechaPago",
            "medioPago",
            "estado",
            "reserva",
        )


class MultaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Multa
        fields = (
            "id",
            "fecha",
            "valor",
            "valorDevolucion",
            "reserva",
        )
