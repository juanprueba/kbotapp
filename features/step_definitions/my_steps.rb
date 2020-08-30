
When("inicio la aplicación") do
    visit '/'
end
  
Then("en nombre de la app es {string}") do |nombre|
    expect(page).to have_selector 'h1#nombre', text: nombre
end

Then("inicio el chat") do
    click_button "Iniciar"
end
  
Then("muestro mensaje {string}") do |mensaje|
    expect(page).to have_selector 'div#mensaje', text: mensaje
end