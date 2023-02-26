require_relative 'strgame'

#Hacemos las declaraciones principales
#para poder mover el caracter
x = 50
y = 10
player = '@';

move_char = StringGame.new("Mover caracter")
move_char.ini_name_game

while true
  
  move_char.goto_xy(x,y)
  puts "#{player}"
  
  key_player = move_char.read_key
  
  case key_player
  when 'w'
    y -= 1
  when 'a'
    x -= 1
  when 's'
    y += 1
  when 'd'
    x += 1
  when "\e" # Tecla ESC para salir del bucle
    break
  end
  
  move_char._clrscr
  
end
