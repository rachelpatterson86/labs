require 'pry'

alphabet = {
  "A"=>"Alfa",
  "B"=>"Bravo",
  "C"=>"Charlie",
  "D"=>"Delta",
  "E"=>"Echo",
  "F"=>"Foxtrot",
  "G"=>"Golf",
  "H"=>"Hotel",
  "I"=>"India",
  "J"=>"Juliett",
  "K"=>"Kilo",
  "L"=>"Lima",
  "M"=>"Mike",
  "N"=>"November",
  "O"=>"Oscar",
  "P"=>"Papa",
  "Q"=>"Quebec",
  "R"=>"Romeo",
  "S"=>"Sierra",
  "T"=>"Tango",
  "U"=>"Uniform",
  "V"=>"Victor",
  "W"=>"Whiskey",
  "X"=>"X-ray",
  "Y"=>"Yankee",
  "Z"=>"Zulu"
}

def encoder(msg,blech)
  #msg = 'whatever is in lies'
  #blech = 'whatever is in alphabet'
  msg.each_char do |c|
    puts blech[c] #does something with c so needs to put c since we want to call each letter...
#    blech.each {|x,y| puts "#{x}, #{y}"} = no need because the value is already called...
  end
end


def decoder(msg,blech)
  msg.split.each do |b| #see ruby doc for strings. what gives me an array of words?
    puts blech.invert[b]
#return only first char of string.... of each array
end
end


puts "Would you like to send a secret message?"
lies = gets.upcase

puts "What would you like to decode?"
truth = gets.capitalize

encoder(lies,alphabet)
decoder(truth, alphabet)

=begin
The encode function will take a
string replace all upper and lower
case characters with their "NATO"
equivalents and return the result.

=end
