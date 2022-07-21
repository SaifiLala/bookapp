require 'rails_helper'

RSpec.describe "books/edit", type: :view do
    before(:each) do
    @book = assign(:book, Book.create!(
        title: "Book 4",
        description: "My text"
    ))
    end




  it 'renders the edit post form' do
    render

    assert_select 'form[action=?][method=?]', books_path(@book), 'post' do
        assert_select 'input[name=?]', "post[title=?]"
        assert_select  "textarea[name=?]", "post[description]"
    end
    end
end
