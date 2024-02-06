def caesar_cipher(message = "", number = 0)
  
  if message == ""
    puts "Please enter a message to encrypt"
    message = gets.chomp
  end
  if number == 0
    puts "Please enter a number to shift by"
    number = gets.chomp.to_i
  end
  
  alphabet = ("A".."Z").to_a
  length = message.length
  encrypted_message = ""

  for i in 0..length-1
    letter = message[i]
    shift = 0
    if letter.ord >= 97 && letter.ord <= 122
      letter = letter.upcase
      shift = letter.ord - 65 + number
      if shift > 25
        shift = shift - 26
      else
        shift = shift
      end
      encrypted_message += alphabet[shift].downcase
    elsif letter.ord >= 65 && letter.ord <= 90
      shift = letter.ord - 65 + number
      if shift > 25
        shift = shift - 26
      else
        shift = shift
      end
      encrypted_message += alphabet[shift]
    else
      encrypted_message += letter
    end
  end
  puts "The encrypted message is: #{encrypted_message}"
end

caesar_cipher()
