def decode_char(character)
  morse_code = { "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.", "G" => "--.",
                 "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..", "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.", "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-", "Y" => "-.--", "Z" => "--.." }

  morse_code.each { |key, value| return key if value == character }
end

def decode_word(word)
  word_split = word.split(" ")
  word_array = word_split.map { |word| decode_char(word) }
  word_array.join('')
end

def decode(sentence)
  sentence_spiltted = sentence.split(" ")
  sentence_array = sentence_spiltted.map { |sentence|
    decode_word(sentence)
  }
  sentence_array.join(" ")
end

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
