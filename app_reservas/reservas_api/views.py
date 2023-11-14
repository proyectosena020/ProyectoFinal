from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import permissions
from .models import Categoria, Usuario, Sitio
from .models import SitiosVisitados, Habitacion, Imagen
from .models import Servicio, Seguridad, Regla
from .models import Comentario, Favorito, Reserva
from .models import PagoAnfitrion, Pago, Multa
from .serializers import CategoriaSerializer, UsuarioSerializer, SitioSerializer
from .serializers import SitiosVisitadosSerializer, HabitacionSerializer, ImagenSerializer
from .serializers import ServicioSerializer, SeguridadSerializer, ReglaSerializer
from .serializers import ComentarioSerializer, FavoritoSerializer, ReservaSerializer
from .serializers import PagoAnfitrionSerializer, PagoSerializer, MultaSerializer

# Create your views here.


class CategoriaListApiView(APIView):
    def get(self, request, *args, **kwargs):
        categorias = Categoria.objects
        serializer = CategoriaSerializer(categorias, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'nombre': request.data.get('nombre'),
            'icono': request.data.get('icono'),
            'imagen': request.data.get('imagen'),
        }
        serializer = CategoriaSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CategoriaDetailApiView(APIView):
    def get_object(self, categoria_id):
        try:
            return Categoria.objects.get(id=categoria_id)
        except Categoria.DoesNotExist:
            return None

    def get(self, request, categoria_id, *args, **kwargs):
        categoria_instance = self.get_object(categoria_id)
        if not categoria_instance:
            return Response(
                {"res": "Object with categoria id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = CategoriaSerializer(categoria_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, categoria_id, *args, **kwargs):
        categoria_instance = self.get_object(categoria_id)
        if not categoria_instance:
            return Response(
                {"res", "Object with categoria id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'nombre': request.data.get('nombre'),
            'icono': request.data.get('icono'),
            'imagen': request.data.get('imagen'),
        }
        serializer = CategoriaSerializer(
            instance=categoria_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, categoria_id, *args, **kwargs):
        categoria_instance = self.get_object(categoria_id)
        if not categoria_instance:
            return Response(
                {"res", "Object with categoria id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        categoria_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class UsuarioListApiView(APIView):
    def get(self, request, *args, **kwargs):
        usuarios = Usuario.objects
        serializer = UsuarioSerializer(usuarios, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'nombreCompleto': request.data.get('nombreCompleto'),
            'tipoDocumento': request.data.get('tipoDocumento'),
            'numeroDocumento': request.data.get('numeroDocumento'),
            'correoElectronico': request.data.get('correoElectronico'),
            'telefono': request.data.get('telefono'),
            'telefonoCelular': request.data.get('telefonoCelular'),
            'idioma': request.data.get('idioma'),
            'foto': request.data.get('foto'),
            'rolAdmin': request.data.get('rolAdmin'),
            'descripcion': request.data.get('descripcion'),
            'banco': request.data.get('banco'),
            'numeroCuenta': request.data.get('numeroCuenta'),
            'daviplata': request.data.get('daviplata'),
            'fechaRegistro': request.data.get('fechaRegistro'),
            'tiempo': request.data.get('tiempo'),
            'calificacion': request.data.get('calificacion'),
        }
        serializer = UsuarioSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class UsuarioDetailApiView(APIView):
    def get_object(self, usuario_id):
        try:
            return Usuario.objects.get(id=usuario_id)
        except Usuario.DoesNotExist:
            return None

    def get(self, request, usuario_id, *args, **kwargs):
        usuario_instance = self.get_object(usuario_id)
        if not usuario_instance:
            return Response(
                {"res": "Object with usuario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = UsuarioSerializer(usuario_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, usuario_id, *args, **kwargs):
        usuario_instance = self.get_object(usuario_id)
        if not usuario_instance:
            return Response(
                {"res", "Object with usuario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'nombreCompleto': request.data.get('nombreCompleto'),
            'tipoDocumento': request.data.get('tipoDocumento'),
            'numeroDocumento': request.data.get('numeroDocumento'),
            'correoElectronico': request.data.get('correoElectronico'),
            'telefono': request.data.get('telefono'),
            'telefonoCelular': request.data.get('telefonoCelular'),
            'idioma': request.data.get('idioma'),
            'foto': request.data.get('foto'),
            'rolAdmin': request.data.get('rolAdmin'),
            'descripcion': request.data.get('descripcion'),
            'banco': request.data.get('banco'),
            'numeroCuenta': request.data.get('numeroCuenta'),
            'daviplata': request.data.get('daviplata'),
            'fechaRegistro': request.data.get('fechaRegistro'),
            'tiempo': request.data.get('tiempo'),
            'calificacion': request.data.get('calificacion'),
        }
        serializer = UsuarioSerializer(
            instance=usuario_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, usuario_id, *args, **kwargs):
        usuario_instance = self.get_object(usuario_id)
        if not usuario_instance:
            return Response(
                {"res", "Object with usuario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        usuario_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class SitioListApiView(APIView):
    def get(self, request, *args, **kwargs):
        sitios = Sitio.objects
        serializer = SitioSerializer(sitios, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'usuario': request.data.get('usuario'),
            'titulo': request.data.get('titulo'),
            'numHuespedes': request.data.get('numHuespedes'),
            'numCamas': request.data.get('numCamas'),
            'numBanos': request.data.get('numBanos'),
            'acercaEspacio': request.data.get('acercaEspacio'),
            'espacio': request.data.get('espacio'),
            'accesoHuespedes': request.data.get('accesoHuespedes'),
            'aspectosDestacar': request.data.get('aspectosDestacar'),
            'numeroRegistro': request.data.get('numeroRegistro'),
            'valorNoche': request.data.get('valorNoche'),
            'lugar': request.data.get('lugar'),
            'desLugar': request.data.get('desLugar'),
            'direccion': request.data.get('direccion'),
            'continente': request.data.get('continente'),
            'valorLimpieza': request.data.get('valorLimpieza'),
            'comision': request.data.get('comision'),
            'politica': request.data.get('politica'),
            'categoria': request.data.get('categoria'),
        }
        serializer = SitioSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class SitioDetailApiView(APIView):
    def get_object(self, sitio_id):
        try:
            return Sitio.objects.get(id=sitio_id)
        except Sitio.DoesNotExist:
            return None

    def get(self, request, sitio_id, *args, **kwargs):
        sitio_instance = self.get_object(sitio_id)
        if not sitio_instance:
            return Response(
                {"res": "Object with sitio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = SitioSerializer(sitio_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, sitio_id, *args, **kwargs):
        sitio_instance = self.get_object(sitio_id)
        if not sitio_instance:
            return Response(
                {"res", "Object with sitio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'usuario': request.data.get('usuario'),
            'titulo': request.data.get('titulo'),
            'numHuespedes': request.data.get('numHuespedes'),
            'numCamas': request.data.get('numCamas'),
            'numBanos': request.data.get('numBanos'),
            'acercaEspacio': request.data.get('acercaEspacio'),
            'espacio': request.data.get('espacio'),
            'accesoHuespedes': request.data.get('accesoHuespedes'),
            'aspectosDestacar': request.data.get('aspectosDestacar'),
            'numeroRegistro': request.data.get('numeroRegistro'),
            'valorNoche': request.data.get('valorNoche'),
            'lugar': request.data.get('lugar'),
            'desLugar': request.data.get('desLugar'),
            'direccion': request.data.get('direccion'),
            'continente': request.data.get('continente'),
            'valorLimpieza': request.data.get('valorLimpieza'),
            'comision': request.data.get('comision'),
            'politica': request.data.get('politica'),
            'categoria': request.data.get('categoria'),
        }
        serializer = SitioSerializer(
            instance=sitio_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, sitio_id, *args, **kwargs):
        sitio_instance = self.get_object(sitio_id)
        if not sitio_instance:
            return Response(
                {"res", "Object with sitio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        sitio_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class SitioVisitadoListApiView(APIView):
    def get(self, request, *args, **kwargs):
        sitiosVisitados = SitiosVisitados.objects
        serializer = SitiosVisitadosSerializer(sitiosVisitados, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'fechaVista': request.data.get('fechaVista'),
            'sitio': request.data.get('sitio'),
            'usuario': request.data.get('usuario'),
        }
        serializer = SitiosVisitadosSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class SitioVisitadoDetailApiView(APIView):
    def get_object(self, sitiosVisitados_id):
        try:
            return SitiosVisitados.objects.get(id=sitiosVisitados_id)
        except SitiosVisitados.DoesNotExist:
            return None

    def get(self, request, sitiosVisitados_id, *args, **kwargs):
        sitiosVisitados_instance = self.get_object(sitiosVisitados_id)
        if not sitiosVisitados_instance:
            return Response(
                {"res": "Object with sitios visitados id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = SitiosVisitadosSerializer(sitiosVisitados_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, sitiosVisitados_id, *args, **kwargs):
        sitiosVisitados_instance = self.get_object(sitiosVisitados_id)
        if not sitiosVisitados_instance:
            return Response(
                {"res", "Object with sitios visitados id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'fechaVista': request.data.get('fechaVista'),
            'sitio': request.data.get('sitio'),
            'usuario': request.data.get('usuario'),
        }
        serializer = SitiosVisitadosSerializer(
            instance=sitiosVisitados_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, sitiosVisitados_id, *args, **kwargs):
        sitiosVisitados_instance = self.get_object(sitiosVisitados_id)
        if not sitiosVisitados_instance:
            return Response(
                {"res", "Object with sitios visitados id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        sitiosVisitados_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class HabitacionListApiView(APIView):
    def get(self, request, *args, **kwargs):
        habitaciones = Habitacion.objects
        serializer = HabitacionSerializer(habitaciones, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'titulo': request.data.get('titulo'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = HabitacionSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class HabitacionDetailApiView(APIView):
    def get_object(self, habitacion_id):
        try:
            return Habitacion.objects.get(id=habitacion_id)
        except Habitacion.DoesNotExist:
            return None

    def get(self, request, habitacion_id, *args, **kwargs):
        habitacion_instance = self.get_object(habitacion_id)
        if not habitacion_instance:
            return Response(
                {"res": "Object with habitacion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = HabitacionSerializer(habitacion_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, habitacion_id, *args, **kwargs):
        habitacion_instance = self.get_object(habitacion_id)
        if not habitacion_instance:
            return Response(
                {"res", "Object with habitacion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'titulo': request.data.get('titulo'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = HabitacionSerializer(
            instance=habitacion_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, habitacion_id, *args, **kwargs):
        habitacion_instance = self.get_object(habitacion_id)
        if not habitacion_instance:
            return Response(
                {"res", "Object with habitacion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        habitacion_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class ImagenListApiView(APIView):
    def get(self, request, *args, **kwargs):
        imagenes = Imagen.objects
        serializer = ImagenSerializer(imagenes, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'direccion': request.data.get('direccion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ImagenSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ImagenDetailApiView(APIView):
    def get_object(self, imagen_id):
        try:
            return Imagen.objects.get(id=imagen_id)
        except Imagen.DoesNotExist:
            return None

    def get(self, request, imagen_id, *args, **kwargs):
        imagen_instance = self.get_object(imagen_id)
        if not imagen_instance:
            return Response(
                {"res": "Object with imagen id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = ImagenSerializer(imagen_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, imagen_id, *args, **kwargs):
        imagen_instance = self.get_object(imagen_id)
        if not imagen_instance:
            return Response(
                {"res", "Object with imagen id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'direccion': request.data.get('direccion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ImagenSerializer(
            instance=imagen_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, imagen_id, *args, **kwargs):
        imagen_instance = self.get_object(imagen_id)
        if not imagen_instance:
            return Response(
                {"res", "Object with imagen id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        imagen_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class ServicioListApiView(APIView):
    def get(self, request, *args, **kwargs):
        servicios = Servicio.objects
        serializer = ServicioSerializer(servicios, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'icono': request.data.get('icono'),
            'nombre': request.data.get('nombre'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ServicioSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ServicioDetailApiView(APIView):
    def get_object(self, servicio_id):
        try:
            return Servicio.objects.get(id=servicio_id)
        except Servicio.DoesNotExist:
            return None

    def get(self, request, servicio_id, *args, **kwargs):
        servicio_instance = self.get_object(servicio_id)
        if not servicio_instance:
            return Response(
                {"res": "Object with servicio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = ServicioSerializer(servicio_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, servicio_id, *args, **kwargs):
        servicio_instance = self.get_object(servicio_id)
        if not servicio_instance:
            return Response(
                {"res", "Object with servicio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'icono': request.data.get('icono'),
            'nombre': request.data.get('nombre'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ServicioSerializer(
            instance=servicio_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, servicio_id, *args, **kwargs):
        servicio_instance = self.get_object(servicio_id)
        if not servicio_instance:
            return Response(
                {"res", "Object with servicio id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        servicio_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class SeguridadListApiView(APIView):
    def get(self, request, *args, **kwargs):
        seguridades = Seguridad.objects
        serializer = SeguridadSerializer(seguridades, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = SeguridadSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class SeguridadDetailApiView(APIView):
    def get_object(self, seguridad_id):
        try:
            return Seguridad.objects.get(id=seguridad_id)
        except Seguridad.DoesNotExist:
            return None

    def get(self, request, seguridad_id, *args, **kwargs):
        seguridad_instance = self.get_object(seguridad_id)
        if not seguridad_instance:
            return Response(
                {"res": "Object with seguridad id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = SeguridadSerializer(seguridad_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, seguridad_id, *args, **kwargs):
        seguridad_instance = self.get_object(seguridad_id)
        if not seguridad_instance:
            return Response(
                {"res", "Object with seguridad id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = SeguridadSerializer(
            instance=seguridad_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, seguridad_id, *args, **kwargs):
        seguridad_instance = self.get_object(seguridad_id)
        if not seguridad_instance:
            return Response(
                {"res", "Object with seguridad id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        seguridad_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class ReglaListApiView(APIView):
    def get(self, request, *args, **kwargs):
        reglas = Regla.objects
        serializer = ReglaSerializer(reglas, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ReglaSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ReglaDetailApiView(APIView):
    def get_object(self, regla_id):
        try:
            return Regla.objects.get(id=regla_id)
        except Regla.DoesNotExist:
            return None

    def get(self, request, regla_id, *args, **kwargs):
        regla_instance = self.get_object(regla_id)
        if not regla_instance:
            return Response(
                {"res": "Object with regla id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = ReglaSerializer(regla_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, regla_id, *args, **kwargs):
        regla_instance = self.get_object(regla_id)
        if not regla_instance:
            return Response(
                {"res", "Object with regla id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ReglaSerializer(
            instance=regla_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, regla_id, *args, **kwargs):
        regla_instance = self.get_object(regla_id)
        if not regla_instance:
            return Response(
                {"res", "Object with regla id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        regla_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class ComentarioListApiView(APIView):
    def get(self, request, *args, **kwargs):
        comentarios = Comentario.objects
        serializer = ComentarioSerializer(comentarios, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'usuario': request.data.get('usuario'),
            'calLimpieza': request.data.get('calLimpieza'),
            'calComunicacion': request.data.get('calComunicacion'),
            'calLlegada': request.data.get('calLlegada'),
            'calFiabilidad': request.data.get('calFiabilidad'),
            'calUbicacion': request.data.get('calUbicacion'),
            'calPrecio': request.data.get('calPrecio'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ComentarioSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ComentarioDetailApiView(APIView):
    def get_object(self, comentario_id):
        try:
            return Comentario.objects.get(id=comentario_id)
        except Comentario.DoesNotExist:
            return None

    def get(self, request, comentario_id, *args, **kwargs):
        comentario_instance = self.get_object(comentario_id)
        if not comentario_instance:
            return Response(
                {"res": "Object with comentario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = ComentarioSerializer(comentario_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, comentario_id, *args, **kwargs):
        comentario_instance = self.get_object(comentario_id)
        if not comentario_instance:
            return Response(
                {"res", "Object with comentario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'usuario': request.data.get('usuario'),
            'calLimpieza': request.data.get('calLimpieza'),
            'calComunicacion': request.data.get('calComunicacion'),
            'calLlegada': request.data.get('calLlegada'),
            'calFiabilidad': request.data.get('calFiabilidad'),
            'calUbicacion': request.data.get('calUbicacion'),
            'calPrecio': request.data.get('calPrecio'),
            'descripcion': request.data.get('descripcion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ComentarioSerializer(
            instance=comentario_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, comentario_id, *args, **kwargs):
        comentario_instance = self.get_object(comentario_id)
        if not comentario_instance:
            return Response(
                {"res", "Object with comentario id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        comentario_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class FavoritoListApiView(APIView):
    def get(self, request, *args, **kwargs):
        favoritos = Favorito.objects
        serializer = FavoritoSerializer(favoritos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'usuario': request.data.get('usuario'),
            'sitio': request.data.get('sitio'),
        }
        serializer = FavoritoSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class FavoritoDetailApiView(APIView):
    def get_object(self, favorito_id):
        try:
            return Favorito.objects.get(id=favorito_id)
        except Favorito.DoesNotExist:
            return None

    def get(self, request, favorito_id, *args, **kwargs):
        favorito_instance = self.get_object(favorito_id)
        if not favorito_instance:
            return Response(
                {"res": "Object with favorito id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = FavoritoSerializer(favorito_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, favorito_id, *args, **kwargs):
        favorito_instance = self.get_object(favorito_id)
        if not favorito_instance:
            return Response(
                {"res", "Object with favorito id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'usuario': request.data.get('usuario'),
            'sitio': request.data.get('sitio'),
        }
        serializer = FavoritoSerializer(
            instance=favorito_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, favorito_id, *args, **kwargs):
        favorito_instance = self.get_object(favorito_id)
        if not favorito_instance:
            return Response(
                {"res", "Object with favorito id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        favorito_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class ReservaListApiView(APIView):
    def get(self, request, *args, **kwargs):
        reservas = Reserva.objects
        serializer = ReservaSerializer(reservas, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'usuario': request.data.get('usuario'),
            'fecha': request.data.get('fecha'),
            'fechaEntrada': request.data.get('fechaEntrada'),
            'fechaSalida': request.data.get('fechaSalida'),
            'numAdultos': request.data.get('numAdultos'),
            'numNinos': request.data.get('numNinos'),
            'numBebes': request.data.get('numBebes'),
            'numMascotas': request.data.get('numMascotas'),
            'precioFinal': request.data.get('precioFinal'),
            'estado': request.data.get('estado'),
            'comision': request.data.get('comision'),
            'gananciaAnfitrion': request.data.get('gananciaAnfitrion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ReservaSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class ReservaDetailApiView(APIView):
    def get_object(self, reserva_id):
        try:
            return Reserva.objects.get(id=reserva_id)
        except Reserva.DoesNotExist:
            return None

    def get(self, request, reserva_id, *args, **kwargs):
        reserva_instance = self.get_object(reserva_id)
        if not reserva_instance:
            return Response(
                {"res": "Object with reserva id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = ReservaSerializer(reserva_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, reserva_id, *args, **kwargs):
        reserva_instance = self.get_object(reserva_id)
        if not reserva_instance:
            return Response(
                {"res", "Object with reserva id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'usuario': request.data.get('usuario'),
            'fecha': request.data.get('fecha'),
            'fechaEntrada': request.data.get('fechaEntrada'),
            'fechaSalida': request.data.get('fechaSalida'),
            'numAdultos': request.data.get('numAdultos'),
            'numNinos': request.data.get('numNinos'),
            'numBebes': request.data.get('numBebes'),
            'numMascotas': request.data.get('numMascotas'),
            'precioFinal': request.data.get('precioFinal'),
            'estado': request.data.get('estado'),
            'comision': request.data.get('comision'),
            'gananciaAnfitrion': request.data.get('gananciaAnfitrion'),
            'sitio': request.data.get('sitio'),
        }
        serializer = ReservaSerializer(
            instance=reserva_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, reserva_id, *args, **kwargs):
        reserva_instance = self.get_object(reserva_id)
        if not reserva_instance:
            return Response(
                {"res", "Object with reserva id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        reserva_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )
    

class PagoAnfitrionListApiView(APIView):
    def get(self, request, *args, **kwargs):
        pagoAnfitriones = PagoAnfitrion.objects
        serializer = PagoAnfitrionSerializer(pagoAnfitriones, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'fechaRadicado': request.data.get('fechaRadicado'),
            'fechaPago': request.data.get('fechaPago'),
            'medioPago': request.data.get('medioPago'),
            'estado': request.data.get('estado'),
            'reserva': request.data.get('reserva'),
        }
        serializer = PagoAnfitrionSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class PagoAnfitrionDetailApiView(APIView):
    def get_object(self, pagoAnfitrion_id):
        try:
            return PagoAnfitrion.objects.get(id=pagoAnfitrion_id)
        except PagoAnfitrion.DoesNotExist:
            return None

    def get(self, request, pagoAnfitrion_id, *args, **kwargs):
        pagoAnfitrion_instance = self.get_object(pagoAnfitrion_id)
        if not pagoAnfitrion_instance:
            return Response(
                {"res": "Object with pago anfitrion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = PagoAnfitrionSerializer(pagoAnfitrion_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, pagoAnfitrion_id, *args, **kwargs):
        pagoAnfitrion_instance = self.get_object(pagoAnfitrion_id)
        if not pagoAnfitrion_instance:
            return Response(
                {"res", "Object with pago anfitrion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'fechaRadicado': request.data.get('fechaRadicado'),
            'fechaPago': request.data.get('fechaPago'),
            'medioPago': request.data.get('medioPago'),
            'estado': request.data.get('estado'),
            'reserva': request.data.get('reserva'),
        }
        serializer = PagoAnfitrionSerializer(
            instance=pagoAnfitrion_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pagoAnfitrion_id, *args, **kwargs):
        pagoAnfitrion_instance = self.get_object(pagoAnfitrion_id)
        if not pagoAnfitrion_instance:
            return Response(
                {"res", "Object with pago anfitrion id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        pagoAnfitrion_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )


class PagoListApiView(APIView):
    def get(self, request, *args, **kwargs):
        pagos = Pago.objects
        serializer = PagoSerializer(pagos, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'fechaPago': request.data.get('fechaPago'),
            'medioPago': request.data.get('medioPago'),
            'estado': request.data.get('estado'),
            'reserva': request.data.get('reserva'),
        }
        serializer = PagoSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class PagoDetailApiView(APIView):
    def get_object(self, pago_id):
        try:
            return Pago.objects.get(id=pago_id)
        except Pago.DoesNotExist:
            return None

    def get(self, request, pago_id, *args, **kwargs):
        pago_instance = self.get_object(pago_id)
        if not pago_instance:
            return Response(
                {"res": "Object with pago id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = PagoSerializer(pago_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, pago_id, *args, **kwargs):
        pago_instance = self.get_object(pago_id)
        if not pago_instance:
            return Response(
                {"res", "Object with pago id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'fechaPago': request.data.get('fechaPago'),
            'medioPago': request.data.get('medioPago'),
            'estado': request.data.get('estado'),
            'reserva': request.data.get('reserva'),
        }
        serializer = PagoSerializer(
            instance=pago_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pago_id, *args, **kwargs):
        pago_instance = self.get_object(pago_id)
        if not pago_instance:
            return Response(
                {"res", "Object with pago id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        pago_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )
    

class MultaListApiView(APIView):
    def get(self, request, *args, **kwargs):
        multas = Multa.objects
        serializer = MultaSerializer(multas, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request, *args, **kwargs):
        data = {
            'fecha': request.data.get('fecha'),
            'valor': request.data.get('valor'),
            'valorDevolucion': request.data.get('valorDevolucion'),
            'reserva': request.data.get('reserva'),
        }
        serializer = MultaSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class MultaDetailApiView(APIView):
    def get_object(self, multa_id):
        try:
            return Multa.objects.get(id=multa_id)
        except Multa.DoesNotExist:
            return None

    def get(self, request, multa_id, *args, **kwargs):
        multa_instance = self.get_object(multa_id)
        if not multa_instance:
            return Response(
                {"res": "Object with multa id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )

        serializer = MultaSerializer(multa_instance)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, multa_id, *args, **kwargs):
        multa_instance = self.get_object(multa_id)
        if not multa_instance:
            return Response(
                {"res", "Object with multa id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'fecha': request.data.get('fecha'),
            'valor': request.data.get('valor'),
            'valorDevolucion': request.data.get('valorDevolucion'),
            'reserva': request.data.get('reserva'),
        }
        serializer = MultaSerializer(
            instance=multa_instance,
            data=data,
            partial=True
        )
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, multa_id, *args, **kwargs):
        multa_instance = self.get_object(multa_id)
        if not multa_instance:
            return Response(
                {"res", "Object with multa id does not exists"},
                status=status.HTTP_400_BAD_REQUEST
            )
        multa_instance.delete()
        return Response(
            {"res", "Object deleted!"},
            status=status.HTTP_200_OK
        )
   

