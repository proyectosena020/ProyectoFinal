from django.db import models

# Create your models here.


class Categoria(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50, blank=False, null=False)
    icono = models.CharField(max_length=255, blank=False, null=False)
    imagen = models.CharField(max_length=255, blank=False, null=False)

    def __str__(self):
        return f'Categoría {self.id}:{self.nombre}'


class Usuario(models.Model):

    class TipoDocumento(models.TextChoices):
        CEDULA = "CC", ('Cedula de Ciudadanía')
        EXTRANGERA = "CE", ('Cedula de Extranjería')
        PASAPORTE = "PAS", ('Pasaporte')
        NIT = "NIT", ('Número de identificación tributaria')

    class Banco(models.TextChoices):
        BANCOLOMBIA = "1", ("BANCOLOMBIA")
        BOGOTA = "2", ("Banco de Bogotá")
        CAJASOCIAL = "3", ("Banco caja social")
        AVVILLAS = "4", ("Av Villas")
        OCCIDENTE = "5", ("Banco de occidente")
        POPULAR = "6", ("Banco Popular")
        AGRARIO = "7", ("Banco Agrario")
        DAVIVIENDA = "8", ("Davivienda")
        COLPATRIA = "9", ("Colpatria")

    id = models.AutoField(primary_key=True)
    nombreCompleto = models.CharField(max_length=150, blank=False, null=False)
    tipoDocumento = models.CharField(
        max_length=3, choices=TipoDocumento.choices, default=TipoDocumento.CEDULA)
    numeroDocumento = models.CharField(max_length=20, blank=False, null=False)
    correoElectronico = models.CharField(
        max_length=100, blank=False, null=False)
    telefono = models.CharField(max_length=12, blank=False, null=False)
    telefonoCelular = models.CharField(max_length=12, blank=False, null=False)
    idioma = models.CharField(max_length=100, blank=True, null=True)
    foto = models.CharField(max_length=255, blank=True, null=True)
    rolAdmin = models.BooleanField(blank=True)
    descripcion = models.TextField(blank=True, null=True)
    banco = models.CharField(
        max_length=2, choices=Banco.choices, default=Banco.BANCOLOMBIA)
    numeroCuenta = models.CharField(max_length=20, blank=True, null=True)
    daviplata = models.CharField(max_length=12, blank=True, null=True)
    fechaRegistro = models.DateField(blank=True, null= True)
    tiempo = models.IntegerField(blank=False, null=False)
    calificacion = models.FloatField(blank=False, null=False)

    def __str__(self):
        return f'Usuario {self.id}:{self.nombreCompleto}'


class Sitio(models.Model):

    class Continente(models.TextChoices):
        AMERICASUR = "AMÉRICA DEL SUR", ("AMÉRICA DEL SUR")
        AMERICANORTE = "AMÉRICA DEL NORTE", ("AMÉRICA DEL NORTE")
        AMERICACENTRO = "CENTRO AMÉRICA", ("CENTRO AMÉRICA")
        EUROPA = "EUROPA", ("EUROPA")
        ASIA = "ASIA", ("ASIA")
        AFRICA = "ÁFRICA", ("ÁFRICA")
        OCEANIA = "OCEANÍA", ("OCEANÍA")

    id = models.AutoField(primary_key=True)
    usuario = models.IntegerField(blank=False, null=False)
    titulo = models.CharField(max_length=100, blank=False, null=False)
    numHuespedes = models.IntegerField(blank=False, null=False)
    numCamas = models.IntegerField(blank=True, null=True)
    numBanos = models.IntegerField(blank=False, null=False)
    acercaEspacio = models.TextField(blank=False, null=False)
    espacio = models.TextField(blank=False, null=False)
    accesoHuespedes = models.TextField(blank=False, null=False)
    aspectosDestacar = models.TextField(blank=False, null=False)
    numeroRegistro = models.CharField(max_length=30, blank=False, null=False)
    valorNoche = models.IntegerField(blank=False, null=False)
    lugar = models.CharField(max_length=50, blank=False, null=False)
    desLugar = models.TextField(blank=False, null=False)
    direccion = models.CharField(max_length=100, blank=False, null=False)
    continente = models.CharField(
        max_length=50, choices=Continente.choices, default=Continente.AMERICANORTE)
    valorLimpieza = models.IntegerField(blank=False, null=False)
    comision = models.IntegerField(blank=False, null=False)
    politica = models.BooleanField(blank=True)
    categoria = models.ForeignKey(
        Categoria, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Sitio {self.id}:{self.titulo}'


class SitiosVisitados(models.Model):
    id = models.AutoField(primary_key=True)
    fechaVista = models.DateField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Sitio Visitado {self.id}:{self.fechaVista}'


class Habitacion(models.Model):
    id = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=50, blank=False, null=False)
    descripcion = models.TextField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Habitación {self.id}:{self.sitio}'


class Imagen(models.Model):
    id = models.AutoField(primary_key=True)
    direccion = models.CharField(max_length=255, blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Imagen {self.id}:{self.sitio}'


class Servicio(models.Model):
    id = models.AutoField(primary_key=True)
    icono = models.CharField(max_length=255, blank=False, null=False)
    nombre = models.CharField(max_length=150, blank=False, null=False)
    descripcion = models.CharField(max_length=150, blank=True, null=True)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Servicio {self.id}:{self.sitio}'


class Seguridad(models.Model):
    id = models.AutoField(primary_key=True)
    descripcion = models.TextField(blank=True, null=True)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Seguridad {self.id}:{self.sitio}'


class Regla(models.Model):
    id = models.AutoField(primary_key=True)
    descripcion = models.TextField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Regla {self.id}:{self.sitio}'


class Comentario(models.Model):
    id = models.AutoField(primary_key=True)
    usuario = models.IntegerField(blank=False, null=False)
    calLimpieza = models.FloatField(blank=False, null=False)
    calComunicacion = models.FloatField(blank=False, null=False)
    calLlegada = models.FloatField(blank=False, null=False)
    calFiabilidad = models.FloatField(blank=False, null=False)
    calUbicacion = models.FloatField(blank=False, null=False)
    calPrecio = models.FloatField(blank=False, null=False)
    descripcion = models.TextField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Comentario {self.id}:{self.sitio}'


class Favorito(models.Model):
    id = models.AutoField(primary_key=True)
    usuario = models.IntegerField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Favorito {self.id}:{self.sitio}{self.usuario}'


class Reserva(models.Model):
    id = models.AutoField(primary_key=True)
    usuario = models.IntegerField(blank=False, null=False)
    fecha = models.DateField(blank=False, null=False)
    fechaEntrada = models.DateField(blank=False, null=False)
    fechaSalida = models.DateField(blank=False, null=False)
    numAdultos = models.IntegerField(blank=False, null=False)
    numNinos = models.IntegerField(blank=True, null=True)
    numBebes = models.IntegerField(blank=True, null=True)
    numMascotas = models.IntegerField(blank=True, null=True)
    precioFinal = models.IntegerField(blank=False, null=False)
    estado = models.CharField(max_length=50, blank=False, null=False)
    comision = models.IntegerField(blank=False, null=False)
    gananciaAnfitrion = models.IntegerField(blank=False, null=False)
    sitio = models.ForeignKey(Sitio, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Reserva {self.id}:{self.sitio}{self.usuario}'


class PagoAnfitrion(models.Model):
    id = models.AutoField(primary_key=True)
    fechaRadicado = models.DateField(blank=False, null=False)
    fechaPago = models.DateField(blank=True, null=True)
    medioPago = models.CharField(max_length=50, blank=True, null=True)
    estado = models.CharField(max_length=50, blank=True, null=True)
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Pago Anfitrión {self.id}:{self.reserva}{self.fechaRadicado}'


class Pago(models.Model):
    id = models.AutoField(primary_key=True)
    fechaPago = models.DateField(blank=False, null=False)
    medioPago = models.CharField(max_length=50, blank=True, null=True)
    estado = models.CharField(max_length=50, blank=True, null=True)
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Pago {self.id}:{self.reserva}{self.fechaPago}'


class Multa(models.Model):
    id = models.AutoField(primary_key=True)
    fecha = models.DateField(blank=False, null=False)
    valor = models.IntegerField(blank=False, null=False)
    valorDevolucion = models.IntegerField(blank=False, null=False)
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE, null=False)

    def __str__(self):
        return f'Multa {self.id}:{self.reserva}{self.fecha}'
