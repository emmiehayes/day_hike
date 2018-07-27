require 'rails_helper'

# As a visitor,
# when I visit the hiking trips index page,
# I see a list of all hiking trip names in
# the database.
# As a visitor,
# when I visit the hiking trips index page,
# and I click on the name of a hiking trip,
# I see a unique page for that hiking trip.


describe "user sees all trips" do
  describe "they visit /trips" do
    it "displays all trips" do
      trip_1 = Trip.create(name: "Title 1")
      trip_2 = Trip.create(name: "Title 2")

      visit '/trips'
      expect(page).to have_content("All Trips")
      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)
    end
  end
end
