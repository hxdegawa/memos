require 'test_helper'

class MemoTest < ActiveSupport::TestCase
  setup do
     @memo = Memo.create!(title: 'A new memo', user: User.create!(name: "alice"), body: <<~BODY)
       ##Subtitle

       Contents.
    BODY
  end
  test "assert markdown rendering" do
    assert_includes @memo.rendered_body, '<h2>Subtitle</h2>'
  end
end
