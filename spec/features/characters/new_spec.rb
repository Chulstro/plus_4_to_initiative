require 'rails_helper'

RSpec.describe 'When creating a new character' do

  before :each do
    barb = Classs.create(name: "Barbarian")
    Race.create(name: "Kenku")
    barb.subclasses.create(name: "Totem of the Bear")
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

    click_on "Next Step"
    expect(current_path).to eq("/character_subclasses/new")
    select 'Totem of the Bear', from: 'subclass'

    click_on "Create Character"
    expect(current_path).to eq('/')
    expect(page).to have_content("Chitter")
  end
end
