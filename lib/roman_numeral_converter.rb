class RomanNumeralConverter
  def initialize(val)
    @value = val
  end

  TRANSLATIONS = {
    'M'  => 1000,
    'D'  => 500,
    'C'  => 100,
    'L'  => 50,
    'X'  => 10,
    'IX' => 9,
    'V'  => 5,
    'IV' => 4,
    'I'  => 1,
  }

  def convert
    result = ''
    x = @value

    TRANSLATIONS.each do |roman, number|
      while x >= number
        result += roman
        x -= number
      end
    end

    result
  end
end

