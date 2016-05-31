require 'pry'
class Scrabble

  def score(word)
    if word.to_s == ""
      0
    elsif word.class != String
      0
    else
      letter_values(wd_split(word)).reduce(:+)
    end
  end

  def wd_split(word)
    word.upcase.split('')
  end

  def letter_values(word)
    word.map { |letter| point_values[letter]}
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, ""=>0
    }
  end
end
