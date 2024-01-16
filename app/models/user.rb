class User < ApplicationRecord

    validates_uniqueness_of :username

    def self.generate
        adjectives = ['Abhijeet', 'Neeraj', 'Mayur', 'Meghraj', 'Shivansh', 'Akash']
        nouns = ['Bro','Dude','Buddy']
        number = rand.to_s[2..4]
        username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
        create(username: username)
    end

end