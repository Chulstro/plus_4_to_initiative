require 'rails_helper'

RSpec.describe 'When I visit the character index page' do

  it "shows a list of characters" do
    character_1 = Character.create(name: "Tielfang", lvl: 3)
    character_2 = Character.create(name: "Chitter", lvl: 5)
    visit '/'

    expect(page).to have_content("#{character_1.name}")
    expect(page).to have_content("#{character_2.name}")
  end
end
