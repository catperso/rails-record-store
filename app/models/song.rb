class Song < ApplicationRecord
  belongs_to :album
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_song)

  private
    def titleize_song
      self.name = self.name.titleize
    end
end