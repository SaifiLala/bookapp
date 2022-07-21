require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:each) do
    author = Author.create!(first_name: "Kim",last_name: "DVID",email:"kim@gmail.com",password: "123456",password_confirmation: "123456")
    @book = author.books.create!(title: "Friends", description: "This is comdedy Book")
end
  it 'should not create book bcz of invalid title' do
    @book.title = ""
    expect(@book).to_not be_valid
  end
  it 'should create book bcz of valid title' do
    @book.title= "123456"
    expect(@book).to be_valid
  end
  
end
