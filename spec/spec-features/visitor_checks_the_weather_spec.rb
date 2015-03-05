require 'rails_helper'

feature 'Visitor checks the weather' do |
|
  scenario 'sunny' do
      #setup
      visit root_path
      
    fill_in "What's your zipcode?", with:"12345"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella Needed.")

  end 

  scenario 'rainy' do
      #
      visit root_path


      #exercise
    fill_in "What's your zipcode?", with:"23456"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("It's going to rain!")
    expect(page).to have_content("Don't forget your umbrella.")

   
end 
end 