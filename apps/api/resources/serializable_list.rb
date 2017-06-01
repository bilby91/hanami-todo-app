class SerializableList < JSONAPI::Serializable::Resource
  type 'lists'

  attributes :id, :name, :created_at, :updated_at
end
