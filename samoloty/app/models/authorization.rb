class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :user
  belongs_to :user
  validates :provider, :uid, :presence => true
  #validates_presence_of :user_id, :uid, :provider
  #validates_uniqueness_of :uid, :scope => :provider
  
  #def self.find_from_hash(hash)
  # find_by_provider_and_uid(hash['provider'], hash['uid'])
  #end
  #
  #def self.create_from_hash(hash, user = nil)
  # user ||= User.create_from_hash!(hash)
  # Authorization.create(:user => user, :uid => hash['uid'], :provider => hash['provider'])
  #end
  
  def self.find_or_create(auth_hash)
    unless auth = find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
      user = User.create :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
      auth = create :user => user, :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    end
    auth
  end
  
end



