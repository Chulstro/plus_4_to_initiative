require 'rails_helper'

RSpec.describe 'When I visit the class index page' do
  it "shows a list of classes" do
    class_1 = Classs.create(name: "Barbarian")
    class_2 = Classs.create(name: "Druid")

    visit '/classes'

    expect(page).to have_content("#{class_1.name}")
    expect(page).to have_content("#{class_2.name}")
  end
end
