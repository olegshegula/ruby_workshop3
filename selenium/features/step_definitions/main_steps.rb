Given /^user is on the main page$/ do
  visit_page(MainPage)
end

When /^user open main page$/ do
  fail "Search button is not exist" unless on_page(MainPage).search_element.enabled?
end

When /^open search form$/ do
  on_page(MainPage).search
end

Then /^verify that form is opened$/ do
  fail "Search form is not opened" unless on_page(MainPage).form_element.enabled?
end

When /^user is looking for event "([^\"]*)" in "([^\"]*)" with any price and for any time$/ do |event_name, country_name|
  on_page(MainPage).check_any_time
  on_page(MainPage).name_field= event_name
  on_page(MainPage).check_any_price
  on_page(MainPage).country_field= country_name
  on_page(MainPage).check_any_city
  on_page(MainPage).check_any_place
  on_page(MainPage).check_any_category
  on_page(MainPage).check_any_description
  on_page(MainPage).search_button
end

Then /^user is able to see a list of events by given criteria$/ do
  fail "No result!" unless on_page(MainPage).result_event_element.enabled?
end
