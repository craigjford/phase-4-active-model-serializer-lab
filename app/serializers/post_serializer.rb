class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author 
  has_many :tags

  # def short_content     
  #   "#{self.object.content[0..49]}..."
  # end
end
