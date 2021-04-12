require 'rails_helper'

RSpec.describe "When visiting the subclasses page of a classes show page" do
  it "lists all of that classes subclasses" do
    class_1 = Classs.create(name: "Druid")
    class_2 = Classs.create(name: "Fighter")
    class_1.subclass.create(name: "Circle of Dreams")
    class_1.subclass.create(name: "Circle of the Land")
    class_2.subclass.create(name: "Arcane Archer")

    visit "/classes/#{class_1.id}/subclasses"

    expect(page).to have_content("Circle of Dreams")
    expect(page).to have_content("Circle of the Land")
    expect(page).to_not have_content("Arcane Archer")
  end
end
