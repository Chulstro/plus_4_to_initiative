require 'rails_helper'

RSpec.describe 'When I visit the races index page' do
  it "shows a list of all the available races" do
    Race.create(name: "Kenku")
    Race.create(name: "Human")
    visit '/races'

    expect(page).to have_content("Kenku")
    expect(page).to have_content("Human")
  end
end
