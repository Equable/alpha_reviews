require 'rails_helper'

feature "Going to Restaurant Index page" do
    let!(:restaurant1) { FactoryBot.create(:restaurant) }
    let!(:restaurant2) { FactoryBot.create(:restaurant) }

    scenario "should show a unorder list of restaurants with links and the restaurant names" do
        visit '/restaurants'
        
        expect(page).to have_content(restaurant1.name)
    end

    scenario "when i click a link to to a restaurant it should take me to their show page" do
        visit '/restaurants'

        click_link(restaurant1.name)
        expect(page).to have_current_path("/restaurants/#{restaurant1.id}")
    end
end
