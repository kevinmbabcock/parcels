require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the output path', {:type => :feature}) do
  it('processes the user entry and returns proper info') do
    visit('/')
    fill_in('length', :with => '3')
    fill_in('width', :with => '3')
    fill_in('depth', :with => '3')
    fill_in('weight', :with => '0')
    click_button('Go!')
    expect(page).to have_content('volume of 27')
  end

  it('processes the user entry and returns proper info') do
    visit('/')
    fill_in('length', :with => '3')
    fill_in('width', :with => '3')
    fill_in('depth', :with => '3')
    fill_in('weight', :with => '10')
    click_button('Go!')
    expect(page).to have_content('will cost 270 to ship')
  end
end
