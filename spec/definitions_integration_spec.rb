# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)

# describe('the index page path', {:type => :feature}) do
#   it('allows user to add a new word') do
#     visit('/')
#     fill_in('new_word', :with => "Ruby")
#     click_button('Add')
#     expect(page).to have_content("Ruby")
#   end
# end

# describe('link to a word', {:type => :feature}) do
#   it('lists the definitions for a word') do
#     visit('/')
#     click_link("Ruby")
#     expect(page).to have_content("Ruby")
#   end
# end