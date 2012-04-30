class Spree::Project < ActiveRecord::Base
  belongs_to :spree_user
  has_many :steps
  accepts_nested_attributes_for :steps
  has_attached_file :image, :styles => { :large => "640x480>", :slider => "480x360>", :medium => "320x240>", :thumb => "100x100>" }
  include PgSearch
  multisearchable :against => [:name, :description]
  has_many :galleries
end
