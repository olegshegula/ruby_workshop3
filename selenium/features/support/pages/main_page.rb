class MainPage
  include PageObject
  page_url("#{$TEST_DOMAIN_URL}")
  button(:search, :xpath => "//*[@ng-click='toggleSearchBar()']")
  div(:form, :xpath => "//*[@class='text-center']")
  button(:search_button, :xpath => "//input[@class='btn btn-default']")
  checkbox(:any_time, :xpath => "//input[contains(@ng-click,\"toggleAny('time')\")]")
  text_field(:name_field, :id => "eventName")
  checkbox(:any_price, :xpath => "//input[contains(@ng-click,\"toggleAny('price')\")]")
  text_field(:country_field, :id => "eventCountry")
  checkbox(:any_city, :xpath => "//input[contains(@ng-click,\"toggleAny('city')\")]")
  checkbox(:any_place, :xpath => "//input[contains(@ng-click,\"toggleAny('place')\")]")
  checkbox(:any_category, :xpath => "//input[contains(@ng-click,\"toggleAny('category')\")]")
  checkbox(:any_description, :xpath => "//input[contains(@ng-click,\"toggleAny('description')\")]")
  div(:result_event,:xpath => "//a[text()='Махни крыло']")
end