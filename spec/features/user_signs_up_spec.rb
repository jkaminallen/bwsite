require 'rails_helper'

feature 'user signs up', %Q{
  As a prospective user
  I want to create an account
  So I can eventually purchase products
} do

  scenario 'user specifies valid and required information' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'user_password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign Up'
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Sign Out")
  end

   scenario 'user specifies invalid information' do
     visit products_path
     click_link 'Sign Up'
     click_button 'Sign Up'
     expect(page).to have_content("Email can't be blank")
     expect(page).to have_content("Password can't be blank")
     expect(page).to_not have_content("Sign Out")
   end

   scenario 'user specifies incorrect password confirmation' do
     visit products_path
     click_link 'Sign Up'
     fill_in 'Email', with: 'user@example.com'
     fill_in 'user_password', with: 'password'
     fill_in 'Password confirmation', with: 'password1'
     click_button 'Sign Up'
     expect(page).to have_content("Password confirmation doesn't match Password")
     expect(page).to_not have_content("Sign Out")
   end
end
