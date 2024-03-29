#metodos creados por Tronic/TronicStart
require 'io/console'
require 'sysinfo'

class StringGame

  attr_accessor :name
  attr_accessor :texto

  def initialize(name)
    @name = name
  end

  def ini_name_game
     puts "Game: name"
     puts name
  end

  def print (texto)
    @texto = texto
    puts texto
  end
  
  def print_int (int)
     puts int
  end
  
  def dream (time)
      sleep(time)
  end

  def hidden_cursor (confirmation)
        if confirmation == 1
            print "\e[?25l"
       elsif confirmation == 0
            print "\e[?25h"
       elsif
            print "Default"
            # hacer algo en caso de que confirmation no sea ni 1 ni 0
       end
   end
  
  def attibute_text (color)
       if color == 0 #negro
            print "\e[30m"
            print "\e[0m"
       elsif color == 1 #rojo
            print "\e[31m"
            print "\e[0m"
       elsif color == 2 #verde
            print "\e[32m"
            print "\e[0m"
       elsif color == 3 #amarillo
            print "\e[33m"
            print "\e[0m"
       elsif color == 4 #azul
            print "\e[34m"
            print "\e[0m"
       elsif color == 5 #morado
            print "\e[35m"
            print "\e[0m"
       elsif color == 6 #cyan
            print "\e[36m"
            print "\e[0m"
       elsif color == 7 #blanco
            print "\e[37m"
            print "\e[0m"
       end
  end

  def goto_xy (x,y)
       print "\e[#{y};#{x}H"
  end
  
  def center_text (text)
       rows, columns = `stty size`.split.map(&:to_i) # obtiene el número de filas y columnas de la terminal
       x = (columns - text.length) / 2 # calcula la columna en la que se debe mover el cursor
       print "\e[#{x + 1}G" # mueve el cursor a la columna adecuada
       puts text
  end
  
  def exit_program
       abort
  end
  
  def read_input (var)
       var = gets.chomp 
       return var
  end
  
  def genere_random_abc
       random = Random.new # crea una nueva instancia de la clase Random
       10.times do # repite el código 10 veces
       letter = (random.rand(26) + 65).chr # genera un número aleatorio entre 0 y 25 y lo convierte en una letra del abecedario
       puts letter # imprime la letra
    end
  end
  
  def read_key
      key = STDIN.getch
      return key
  end
  
  def read_line
      gets()
  end
  
  def compare_str (str_1,str_2)
       if str_1 == str_2
           return true
       else
           return false
       end
  end
  
  def genere_random_int
       random = Random.new # crea una nueva instancia de la clase Random
       number = random.rand(10) # genera un número aleatorio entre 0 y 9
       return number
  end
  
  def dupli_text (text, times, newline)
       times.times do # repite el código "times" veces
    if newline # si "newline" es "true"
      puts text # imprime el texto con un salto de línea al final
    else
      print text
         end
     end
  end
  
  def _clrscr
      if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i # si se está ejecutando en Windows
          system("cls") # ejecuta el comando "cls" para limpiar la pantalla
     else # si se está ejecutando en otro sistema operativo
         system("clear") # ejecuta el comando "clear" para limpiar la pantalla
      end
  end

def generate_terrain_random(rows, cols)
  terrain = Array.new(rows) { Array.new(cols, 0) }
  srand(Time.now.to_i) # Inicializa el generador de números aleatorios

  # Genera el terreno aleatorio
  for i in 0...rows do
    for j in 0...cols do
      terrain[i][j] = rand(2) # Asigna un valor aleatorio de 0 o 1
    end
  end

  # Imprime el terreno
  for i in 0...rows do
    for j in 0...cols do
      if terrain[i][j] == 0
        print "[&]"
      else
        print "[#]"
      end
    end
    puts # Salto de línea para imprimir cada fila
  end
end

def printC(cand_assets, *paint_assets)
  paint_assets.each do |asset|
    printf("%s", asset)
  end
end

def colorRGBA(red, green, blue, alpha)
  # Convierte los valores RGB y alpha en valores hexadecimales de 2 dígitos
  red_hex = sprintf("%02X", red)
  green_hex = sprintf("%02X", green)
  blue_hex = sprintf("%02X", blue)
  alpha_hex = sprintf("%02X", alpha)

  # Imprime la secuencia de escape de ANSI para cambiar el color del texto
  print "\e[38;2;#{red};#{green};#{blue};#{alpha}m"
  # La secuencia "\e[" indica que se inicia una secuencia de escape de ANSI,
  # "38;2;" indica que se va a cambiar el color del texto en lugar del fondo,
  # seguido de los valores RGB y alpha en formato decimal separados por ";".
  # "m" indica que se ha completado la secuencia de escape.
end

def show_hour
  now = Time.now
  puts "La hora actual es: #{now.strftime("%H:%M:%S")}"
end

def render_(num_functions, *functions)
    while true do
        functions.each do |function|
            function.call
        end
    end
end

end
