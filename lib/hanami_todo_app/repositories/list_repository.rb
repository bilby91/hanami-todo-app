class ListRepository < Hanami::Repository
  associations do
    has_many :tasks
  end

  def with_name(name)
    lists.where(name: name).as(List).to_a
  end

  def find_with_tasks(id)
    aggregate(:tasks).where(id: id).as(List).one
  end
end
