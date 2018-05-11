Given(/^que ingreso al juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |bienvenida|
   expect(page.body).to match /#{bienvenida}/m

  end
