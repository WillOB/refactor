require 'minitest/autorun'
require './utilities'

# write tests here
describe 'utilities' do

  describe 'leap_year?' do

    it 'Multiples of 4 are leap years' do
      leap_year?(2016).must_equal(true)
      leap_year?(2008).must_equal(true)
      leap_year?(1996).must_equal(true)
      leap_year?(8).must_equal(true)
    end
    it 'multiples of 100 are leap years when they are also divisible by four' do
      leap_year?(2000).must_equal(true)
      leap_year?(1600).must_equal(true)
    end
    it 'multiples of 100 are not leap years when not also multiples of four' do
      leap_year?(1900).must_equal(false)
      leap_year?(1800).must_equal(false)
    end
    it 'other years are not leap years' do
      leap_year?(1999).must_equal(false)
      leap_year?(2011).must_equal(false)
    end

  end

  describe 'percent year' do

    it 'Calculates percentage of year' do
      percent_year(39990).must_equal('0.1%')
      percent_year(8002364).must_equal('25.4%')
    end
    it 'works at 0 seconds' do
      percent_year(0).must_equal('0.0%')
    end
    it 'works for 100% of year' do
      percent_year(31536000.0).must_equal('100.0%')
    end
  end

  describe 'standard to military' do

    it 'Converts time to military' do
      convert('3:42am').must_equal('3:42')
    end

  end

end
