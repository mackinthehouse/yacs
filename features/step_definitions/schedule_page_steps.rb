And(/^I should see (.*) schedule events$/) do |num|
  expect(page).to have_css("schedule-event",count:num)
end

And(/^I should see a (.*) with text "(.*)"$/) do |elem, text|
  expect(page.find(elem)).to have_content text
end

Then(/^I should see the (.*) with id (\d+) is selected$/) do |type, id|
  css = "#{type.downcase}[data-id='#{id}']"
  expect(page).to have_css("#{css}.selected")
end
