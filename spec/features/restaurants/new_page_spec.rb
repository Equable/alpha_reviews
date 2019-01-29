require "rails_helper"


feature "visitors can add restaurants" do
  scenario "visitor adds new restaurant" do

    visit new_restaurant_path
    expect(page).to have_content "New Restaurant Form"

    fill_in "Name", with: "New Restaurant"
    fill_in "Street", with: "123 Fake St"
    fill_in "City", with: "Boston"
    fill_in "State", with: "MA"
    fill_in "Zip", with: "02125"
    fill_in "Description", with: "AHHHHHHHHHHHHHHH"

    click_button "Add Restaurant"

    expect(page).to have_content "Restaurant added successfully"
  end

  scenario "visitor does not provide proper information for a restaurant" do
    visit new_restaurant_path

    click_button "Add Restaurant"
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Street can't be blank"
    expect(page).to have_content "City can't be blank"
    expect(page).to have_content "State can't be blank"
    expect(page).to have_content "Zip can't be blank"
  end
end
