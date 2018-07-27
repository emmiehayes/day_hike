require 'rails_helper'
# As a visitor,
# when I visit a hiking trip's page,
# I see a list of trails included in the trip,
# I see the name, address, and length for each trail.

describe "user sees all trip" do
  describe "they visit /trip/1" do
    it "list of all trails included in the trip" do
      trip_1 = Trip.create(name: "Title 1")
      trail_1 = trip_1.trails.create(name: 'trail_1', address: 'trail_1 address', length: 1)
      trail_2 = trip_1.trails.create(name: 'trail_2', address: 'trail_2 address', length: 2)

      visit trip_path(trip_1)

      expect(page).to have_content("All Trails")
      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_1.address)
      expect(page).to have_content(trail_2.address)
      expect(page).to have_content(trail_1.length)
      expect(page).to have_content(trail_2.length)
    end

    it "see trail attributes for each trail" do
      trip_1 = Trip.create(name: "Title 1")
      trip_2 = Trip.create(name: "Title 2")

      visit trips_path
      expect(page).to have_content("All Trips")
      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)
    end
  end
end
