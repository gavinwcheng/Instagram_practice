require 'rails_helper'

feature 'User adds a photo' do
  scenario 'can see the photo on homepage' do
    visit root_path
    click_link 'Add photo'
    fill_in 'Title', with: 'Testing'
    attach_file 'photo[image]', 'spec/support/fixtures/images/testing.jpg'
    click_button 'Upload photo'
    expect(page).to have_content 'Testing'
    expect(page).to have_selector :css, 'img[src*="testing.jpg"]'
    expect(current_path).to eq root_path
  end
end
