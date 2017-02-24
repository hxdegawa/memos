class Memo < ApplicationRecord
  belongs_to :user

  def rendered_body
    markdown = ::Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
    markdown.render(body)
  end
end
