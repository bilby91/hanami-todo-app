class TaskRepository < Hanami::Repository
  associations do
    belongs_to :list
  end

  def for_list(list_id)
    tasks.where(list_id: list_id).as(Task).to_a
  end
end
