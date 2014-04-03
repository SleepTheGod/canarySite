class User < ActiveRecord::Base
	has_many :microcommands
	validates_presence_of :name
end
