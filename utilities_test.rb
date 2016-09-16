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
      standard_to_military('3:42 am').must_equal('3:42')
      standard_to_military('7:00 pm').must_equal('19:00')
    end
    it 'works at noon' do
      standard_to_military('12:00 pm').must_equal('12:00')
    end
    it 'works at midnight' do
      standard_to_military('12:00 am').must_equal('0:00')
    end
    it 'works with uppercase' do
      standard_to_military('6:32 PM').must_equal('18:32')
    end

  end

  describe 'military_to_standard' do

    it "converts military to standard in afternoon" do
      military_to_standard('18:32').must_equal('6:32 pm')
      military_to_standard('21:00').must_equal('9:00 pm')
    end
    it "converts time correctly in morning" do
      military_to_standard('6:08').must_equal('6:08 am')
      military_to_standard('2:53').must_equal('2:53 am')
    end
    it "converts correctly at noon" do
      military_to_standard('12:00').must_equal('12:00 pm')
    end
    it "converts correctly at midnight" do
      military_to_standard('0:00').must_equal('12:00 am')
    end

  end

  define 'okay' do

    it 'returns false if it is past curfew' do
    
    end

  end

end
