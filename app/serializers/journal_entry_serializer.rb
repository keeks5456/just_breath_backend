class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :user
end
