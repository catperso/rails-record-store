require 'rails_helper'

describe Song do
  it { should belong_to(:album) }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }

  it("titleizes the name of a song") do
    album = Album.create({name: "giant steps", genre: "jazz"})
    song = Song.create({name: "do you like jazz", lyrics: "yes i do", album_id: album.id})
    expect(song.name()).to(eq("Do You Like Jazz"))
  end
end