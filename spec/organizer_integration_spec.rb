require('capybara/rspec')
require(./app)
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the organizer path', {:type => :feature}) do
  it('processes the user entry and adds a new Organizer') do
    visit('/organizers/new')
    fill_in('title', :with => 'A Night at the Opera')
    fill_in('artist', :with => 'Queen')
    click_button('Add')
    expect(page).to have_content('Success!')
  end
end
