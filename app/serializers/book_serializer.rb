class BookSerializer < ApplicationSerializer
  attributes :id, :title, :description, :author_name, :created_at
  def author_name
    object.author.first_name
  end
  def created_at
    object.created_at.to_s
  end 
end
