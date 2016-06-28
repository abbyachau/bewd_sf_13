# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string
#  image_url   :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ActiveRecord::Base
  has_many :songs

  validates_presence_of :name, :description, :image_url
  validates :name, uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 250 }


end
