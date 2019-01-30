require 'rails_helper'

feature "Going to Restaurant Index page" do
  let!(:restaurant1) { FactoryBot.create(:restaurant) }
  let!(:user) { FactoryBot.create(:user) }

  scenario "should show a unorder list of restaurants with links and the restaurant names" do
    visit '/restaurants'

    expect(page).to have_content(restaurant1.name)
  end

  scenario "when i click a link to to a restaurant it should take me to their show page" do
    visit '/restaurants'
    click_link(restaurant1.name, match: :first)
    expect(page).to have_current_path("/restaurants/#{restaurant1.id}")
  end

  scenario "An admin can delete a restaurant from the index page" do
    login_as user
    visit '/restaurants'

    expect(page).to have_content('Delete')
    expect(page).to have_content(restaurant1.name)
    find(:xpath, "//a[@href='/restaurants/#{restaurant1.id}']", text:'Delete').click
    expect(page).not_to have_content(restaurant1.name)
    expect(page).to have_content('Restaurant deleted successfully')
  end

  scenario "A user can't delete a restaurant from the index page" do
    visit '/restaurants'

    expect(page).not_to have_content('Delete')
  end
end
