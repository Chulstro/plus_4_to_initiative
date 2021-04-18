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

    expect(current_path).to equal("/new")\

    fill_in 'name', with: "Chitter"
    fill_in 'lvl', with: "3"
    select 'Barbarian', from: 'class'
    select 'Kenku', from: 'race'

    click_on "Create Character"
    expect(current_path).to equal("/")
    expect(page).to have_content("Chitter")
  end
end
