require 'rails_helper'

RSpec.describe 'When creating a new character' do

  before :each do
    Classs.create(name: "Barbarian")
    Race.create(name: "Kenku")
  end

  it "it has a form with race and class options" do
    visit '/'
    expect(page).to_not have_content("Chitter")
    click_on "New Character"

    expect(current_path).to eq("/new")

    fill_in 'name', with: "Chitter"
    select '3', from: "lvl"
    select 'Barbarian', from: 'class'
    select 'Kenku', from: 'race'

    click_on "Create Character"
    expect(current_path).to eq("/")
    expect(page).to have_content("Chitter")
  end
end
