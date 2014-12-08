require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/test_http'

class TestHTTP <MiniTest::Test
  URL = "http://195.24.153.138:7777/event-app/"
  reporter_options = {color: true}
  MiniTest::Reporters.use! [MiniTest::Reporters::SpecReporter.new(reporter_options)]


  def setup
    @helper = HttpTestHelper.new
  end

  def test_get_resources
    @helper.get_info("#{URL}all/event/")
  end
end