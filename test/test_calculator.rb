require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/spec'
require_relative '../lib/calculator'

# class TestCalculator<Minitest::Test
describe Calculator do
  reporter_options = { color:true }
  MiniTest::Reporters.use!
  [MiniTest::Reporters::SpecReporter.new(reporter_options)]
before do
  @calc=Calculator.new
end
 # def setup
 #  @calc = Calculator.new
 # end

  # def test_proper_addition
  #   assert_equal 4 , @calc.add(2,2)
  # end
  # def test_proper_substraction
  #   assert_equal 0, @calc.subtract(2,2)
  # end
  #
  # def test_failing_addition
  #   refute_equal 5, @calc.add(2,2)
  # end
  # def test_failing_subtract
  #   refute_equal -1, @calc.subtract(2,2)
  # end

#   minitest/spec

  it "test_proper_addition" do
     @calc.add(2,2).must_be :==, 4
  end

  it "test_proper_substraction" do
    @calc.subtract(2,2).must_be :==,0
  end

  it "test_failing_addition" do
    @calc.add(2,2).wont_be :==,5
  end

  it "test_failing_subtract" do
    @calc.subtract(2,2).wont_be :==,-1
  end

end
