class Post < Sequel::Model
  def validate
    errors.add(:title, "can't be empty") if title.nil? || title.empty?
  end
end
