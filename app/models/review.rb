# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
	validates :title, presence: true,
					  length: { minimum: 5 }
end
