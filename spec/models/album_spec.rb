require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validations" do
    it "is valid" do
      # instantiate a valid album and ensure it is valid
      artist = Artist.create('yung_bruh')
      album = Album.new(name: 'lil_album')

      results = ablum.valid?
      errors = ablum.errors.full_messages

      expect(results).to be true

      expect(errors).to be_empty
    end

    it "is invalid without a name" do
      # instantiate an album without a name and ensure it is invalid
      album = Album.new(name: nil)

      results = ablum.valid?
      errors = ablum.errors.full_messages

      expect(errors).to be_empty
      expect(errors).to include("sss")

    end
  end

  describe "attributes" do
    it "has expected attributes" do
      # ensure exactly the expected attributes are present on an album
      album = Album.new(name: "nil")

      album.attribute_names.map(&:to_sym)

      expect(result).to contain_exactly(
        :artist_id,
        :available,
        :created_at,
        :id,
        :name,
        :updated_at
      )
    end
  end

  context "scopes" do
    describe "available" do
      it "returns a list of available albums sorted by name" do
        # set up a some available albums and unavailable albums and make expecations that the
        # available albums scope only returns available albums sorted by name
        available_album = Album.new(name: 'come_again')
        unavailable_album = Album.new(name: "sinner")
        albums = Album.create([
          {name: "sinner", artist_id: 1},
          {name: "come_again", artist_id: 1},
          {name: "popStar", artist_id: 1},
          {name: "dragon", artist_id: 1},
        ])

          

      end
    end
  end

  describe "#length_seconds" do
    it "calculates the total length in seconds of an album" do
      # setup a valid album and songs and make expecations about the return value of length seconds
    end
  end
end
