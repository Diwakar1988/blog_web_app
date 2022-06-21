class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy #this will delete all comments associated with an article when an article gets deleted/destroyed
    validates :title , presence: true, length: {minimum: 3}
    validates :body , presence: true, length: {minimum: 10}
end
