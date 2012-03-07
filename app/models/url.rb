class Url < ActiveRecord::Base
  belongs_to :user
  
  SHORT_URL_LENGTH = 6
  SHORT_URL_CHARS = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'
  
  def make_short_url
    shortened_url = ''    
    SHORT_URL_LENGTH.times { |i| shortened_url << SHORT_URL_CHARS[rand(SHORT_URL_CHARS.length)]}
    update_attribute(:short_url, shortened_url)
  end
end
