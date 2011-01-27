Dado /^que eu acabei de entrar no sistema$/ do
  visit(":4567/")
end

Entao /^Eu devo ver o texto "([^"]*)"$/ do |texto|
	if defined?(Spec::Rails::Matchers)
    page.should have_content(texto)
  else
    assert page.has_content?(texto)
  end
end

Entao /^devo preencher o campo "([^"]*)" com (\d+)$/ do |field, value|
  fill_in field, :with => value
end

