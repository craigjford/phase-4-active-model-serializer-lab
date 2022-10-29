class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  has_many :tags

  def short_content    
    "#{self.object.content[0..39]}..."
  end

  def tags
    self.object.tags
  end
end
