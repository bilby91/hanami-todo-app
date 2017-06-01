Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id
      column :description, String, null: false
      foreign_key :list_id, :lists, on_delete: :cascade, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
