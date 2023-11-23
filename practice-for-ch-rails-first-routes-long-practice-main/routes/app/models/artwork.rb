# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
   validates_uniqueness_of :title, scope: :artist_id

   belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

    has_many :artworks,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artworks,
        source: :viewer

    def self.artworks_for_user_id(user_id)
         Artwork
            .select('*')
            .joins(:artworks)
            .joins(:shared_viewers)
            .where('artist_id = ? or artwork_shares.viewer_id = ?', user_id, user_id)
            # .where(artwork_shares: {viewer_id: user_id})
    end
end
