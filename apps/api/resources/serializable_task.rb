class SerializableTask < JSONAPI::Serializable::Resource
  type 'tasks'

  attributes :id, :description, :created_at, :updated_at
end
