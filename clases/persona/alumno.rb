require_relative "usuario.rb"

class Alumno < Usuario
  @@maxLibro = 5
  @@maxTiempo = 7
  attr_accessor :codAlumno

  def initialize(codAlumno, apellidoPaterno, apellidoMaterno, nombre)
    @codAlumno = codAlumno
    super(apellidoPaterno, apellidoMaterno, nombre)
  end

  def exp_json()
    {
      codAlumno: @codAlumno,
      apellidoPaterno: @apellidoPaterno,
      apellidoMaterno: @apellidoMaterno,
      nombre: @nombre
    }
  end

end
