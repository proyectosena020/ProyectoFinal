from django.db import models

# Create your models here.
class Categoria (models.Model):
    nombre = models.CharField(max_length=60)
    icono = models.CharField(max_length=255)
    imagen = models.CharField(max_length=255)
    
    def __str__(self):
        return self.nombre

class Usuario (models.Model):

    class TipoDocumento (models.TextChoices):
        CEDULA = 'CC', ('Cédula de Ciudadanía')
        EXTRANGERA = 'CE', ('Cédula de Extranjería')
        PASAPORTE = 'PAS', ('Pasaporte')
        NIT = 'NIT', ('Número de Identificación Tributaria')

    nombreCompleto = models.CharField(max_length=150)
    tipoDocumento = models.CharField(max_length=3, choices=TipoDocumento.choices, default=TipoDocumento.CEDULA)
    numDocumento = models.CharField(max_length=12)
    correo = models.CharField(max_length=60)
    telefono = models.CharField(max_length=12)
    telefonoCel = models.CharField(max_length=12)
    idioma = models.CharField(max_length=100)
    foto = models.CharField(max_length=255)
    descripcion = models.TextField()
    cuentaBancaria = models.CharField(max_length=20)
    banco = models.CharField(max_length=30)
    daviplata = models.CharField(max_length=12)
    rolAdmin = models.BooleanField()
    rolAnfi = models.BooleanField()

    def __str__(self):
        return self.nombreCompleto
    
class Sitio (models.Model):
    titulo = models.CharField(max_length=60)
    huespedes = models.IntegerField()
    camas = models.IntegerField()
    baños = models.IntegerField()
    acercaEspacio = models.TextField()
    espacio = models.TextField()
    accesoHuesped = models.TextField()
    aspectoDestacar = models.TextField()
    numRegistro = models.CharField(max_length=30)
    lugar = models.CharField(max_length=50)
    lugarDes = models.TextField()
    direccion = models.CharField(max_length=150)
    continente = models.CharField(max_length=60)
    valorNoche = models.IntegerField()
    valorLimpieza = models.IntegerField()
    comision = models.IntegerField()
    politica = models.BooleanField()
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)

    def __str__(self):
        return f'Propiedad: {self.titulo}, {self.categoria}, {self.usuario}.'

class Habitacion (models.Model):
    titulo = models.CharField(max_length=40)
    descripcion = models.TextField()
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Habitación: {self.titulo}, {self.sitio}.'
    
class Imagen (models.Model):
    direccion = models.CharField(max_length=255)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return self.sitio
    
class Servicio (models.Model):
    icono = models.CharField(max_length=255)
    nombre = models.CharField(max_length=150)
    descripcion = models.CharField(max_length=255, null=True)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Servicio: {self.nombre}, {self.sitio}.'
    
class Seguridad (models.Model):
    icono = models.CharField(max_length=255)
    nombre = models.CharField(max_length=150)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Seguridad: {self.nombre}, {self.sitio}.'
    
class Regla (models.Model):
    icono = models.CharField(max_length=255)
    nombre = models.CharField(max_length=150)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Regla: {self.nombre}, {self.sitio}.'
    
class Favorito (models.Model):
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Favorito: {self.usuario}, {self.sitio}.'

class Comentario (models.Model):
    calLimpieza = models.IntegerField()
    calComunicacion = models.IntegerField()
    calLlegada = models.IntegerField()
    calFiabilidad = models.IntegerField()
    calUbicacion = models.IntegerField()
    calPrecio = models.IntegerField()
    descripcion = models.TextField()
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Comentario: {self.usuario}, {self.sitio}.'

class Reserva (models.Model):
    fecha = models.DateField(null=True)
    fechaEntrada = models.DateField()
    fechaSalida = models.DateField()
    numAdultos = models.IntegerField()
    numNiños = models.IntegerField()
    numBebes = models.IntegerField()
    numMascotas = models.IntegerField()
    medioPago = models.CharField(max_length=60)
    estado = models.CharField(max_length=40)
    precioFinal = models.IntegerField()
    comision = models.IntegerField()
    gananciaAnf = models.IntegerField()
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Reserva: {self.usuario}, {self.sitio}, {self.fecha}.'
    
class Pago (models.Model):
    fechaRadicado = models.DateField()
    fechaPago = models.DateField()
    medioPago = models.CharField(max_length=60)
    estado = models.CharField(max_length=40)
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE)

    def __str__(self):
        return f'Pago: {self.usuario}, {self.sitio}, {self.reserva}.'
    
class ReglaAdicional (models.Model):
    icono = models.CharField(max_length=255)
    descripcion = models.TextField()
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE)

    def __str__(self):
        return f'Regla Adicional: {self.sitio}'