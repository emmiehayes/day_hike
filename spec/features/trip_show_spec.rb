require 'rails_helper'
# As a visitor,
# when I visit a hiking trip's page,
# I see the total hiking distance
# of all trails on that hiking trip

# As a visitor,
# when I visit a hiking trip's page,
# I see the average hiking distance
# of all trails on that hiking trip

# As a visitor,
# when I visit a hiking trip's page,
# I see the longest hiking distance
# from all trails on that hiking trip

# As a visitor,
# when I visit a hiking trip's page,
# I see the shortest hiking distance
# from all trails on that hiking trip

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

    it "see total hiking distance for all trails" do
      trip_1 = Trip.create(name: "Title 1")
      trail_1 = trip_1.trails.create(name: 'trail_1', address: 'trail_1 address', length: 1)
      trail_2 = trip_1.trails.create(name: 'trail_2', address: 'trail_2 address', length: 2)

      visit trip_path(trip_1)

      expect(page).to have_content("Total Distance: #{trip_1.total_length}")
    end

    it "see average hiking distance for all trails" do
      trip_1 = Trip.create(name: "Title 1")
      trail_1 = trip_1.trails.create(name: 'trail_1', address: 'trail_1 address', length: 1)
      trail_2 = trip_1.trails.create(name: 'trail_2', address: 'trail_2 address', length: 2)

      visit trip_path(trip_1)

      expect(page).to have_content("Total Distance: #{trip_1.total_length}")
    end

    it "see longest distance" do
      trip_1 = Trip.create(name: "Title 1")
      trail_1 = trip_1.trails.create(name: 'trail_1', address: 'trail_1 address', length: 1)
      trail_2 = trip_1.trails.create(name: 'trail_2', address: 'trail_2 address', length: 2)

      visit trip_path(trip_1)

      expect(page).to have_content("Total Distance: #{trip_1.total_length}")
    end

    it "see shortest distance" do
      trip_1 = Trip.create(name: "Title 1")
      trail_1 = trip_1.trails.create(name: 'trail_1', address: 'trail_1 address', length: 1)
      trail_2 = trip_1.trails.create(name: 'trail_2', address: 'trail_2 address', length: 2)

      visit trip_path(trip_1)

      expect(page).to have_content("Total Distance: #{trip_1.total_length}")
    end
  end
end
