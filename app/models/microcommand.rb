class Microcommand < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :command_txt
end
