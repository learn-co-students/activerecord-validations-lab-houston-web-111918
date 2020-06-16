class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w('Fiction', 'Non-Fiction')}
  include ActiveModel::Validations
  validates_with MyValidator
end


# class ClickbaitValidator < ActiveModel::Validator
#   def validate(post)
#     unless post.title.include?("Won't Believe", "Secret", /Top [0-9]*/i, "Guess")
#       post.errors[:title] << "Title isn't clickbait-y enough"
#     end
#   end
# end

