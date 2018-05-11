Given(/^que ingreso al juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |bienvenida|
   expect(page.body).to match /#{bienvenida}/m
end

When (/^inicio juego$/) do
  click_button("Jugar")
end

When (/^probemos suerte$/) do
  click_button("probar")
end

When(/^ingreso el valor "([^"]*)"$/) do |probarvalor|
  fill_in("probarvalor", :with => probarvalor)
end













