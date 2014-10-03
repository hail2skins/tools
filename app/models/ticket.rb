class Ticket < ActiveRecord::Base
	belongs_to :project
	belongs_to :state
	belongs_to :user
	has_many :assets
	accepts_nested_attributes_for :assets
	has_many :comments
	attr_accessor :tag_names
	has_and_belongs_to_many :tags

	validates :title, presence: true
	validates :description, presence: true,
													length: { minimum: 10 }


end
