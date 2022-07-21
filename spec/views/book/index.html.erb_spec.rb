require 'rails_helper'

RSpec.describe "books/index", type: :view do
    before(:each) do
    assign(:book, [Book.create!(
        title: "Book 4",
        description: "My text"
    ),
    Book.create!(
        title: "Book 4",
        name: "My tags"
    )
])
    end




  it 'renders the list of books' do
    render

    assert_select "tr>td" text: "Title".to_s, count: 2
    assert_select "tr>td" text: "Tags".to_s, count: 2
    end
    end
end
