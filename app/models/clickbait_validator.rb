class MyValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.include?("Won't Believe") ||
     post.title.include?("Secret") ||
     post.title.include?("Top[number]") ||
     post.title.include?("Guess")
      post.errors[:title] << "Title isn't clickbait-y enough"
    end
  end
end
