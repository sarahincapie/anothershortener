class Short < ActiveRecord::Base

 after_save :update



private 

def random_string(length=10)
  chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789'
  randomize = ''
  length.times { randomize << chars[rand(chars.size)] }
  randomize

end

  def update
	random = random_string(6)
  	short = "http://randomize/#{random}"
	self.update_column(:short, short)

end 
end
