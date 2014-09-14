
require 'roman_numeral_converter'

describe RomanNumeralConverter do

  def convert(x)
    RomanNumeralConverter.new(x).convert
  end

  it 'converts correctly' do
    expect(convert 1).to eq 'I'
    expect(convert 2).to eq 'II'
    expect(convert 4).to eq 'IV'

    expect(convert 5).to eq 'V'
    expect(convert 6).to eq 'VI'
    expect(convert 7).to eq 'VII'

    expect(convert 10).to eq 'X'
    expect(convert 20).to eq 'XX'
    expect(convert 27).to eq 'XXVII'

    expect(convert 50).to eq 'L'

    expect(convert 2015).to eq 'MMXV'
  end

end
