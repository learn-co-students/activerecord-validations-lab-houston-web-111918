class MyValidator < ActiveModel::Validator
  def validate(post)
    if !(post.title&.include?("Secret") || post.title&.include?("Top [number]") || post.title&.include?("Guess") || post.title&.include?("Won't Believe"))
        post.errors[:name] << 'Make your title more clickbait!'
    end
  end
end