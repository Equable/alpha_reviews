require 'rails_helper'

feature 'user nav bar', %Q{
  As a signed up user
  I want to see my username on the nav bar
  To visually confirm that I'm signed in
} do
  scenario 'specify valid credentials' do
    user = FactoryBot.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    username = user.email.split('@')[0]


    expect(page).to have_content(username)
    expect(page).to have_content('Sign Out')
  end

  scenario 'specify invalid credentials' do
    visit new_user_session_path

    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password')
    expect(page).to_not have_content('Sign Out')
  end
end
