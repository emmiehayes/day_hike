require 'rails_helper'

describe "user sees all trips" do
  describe "they visit /trips" do
    it "displays all trips" do
      trip_1 = Trip.create(name: "Title 1")
      trip_2 = Trip.create(name: "Title 2")

      visit trips_path
      expect(page).to have_content("All Trips")
      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)
    end

    it "click on name to see trip show page" do
      trip_1 = Trip.create(name: "Title 1")

      visit trips_path
      click_link 'Title 1'

      expect(current_path).to eq(trip_path(trip_1))
    end
  end
end
