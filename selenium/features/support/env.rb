require 'page-object'
require 'page-object/page_factory'
require 'selenium/webdriver'
require 'minitest/autorun'
require 'require_all'
require_all File.dirname(__FILE__) + '/pages'

World(MiniTest::Assertions)
World(PageObject::PageFactory)
PageObject.javascript_framework = :jquery

$TEST_DOMAIN_URL = 'http://195.24.153.138:7777/event-app/#/home'
$BROWSER = :firefox