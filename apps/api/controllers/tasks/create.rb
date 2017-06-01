module Api::Controllers::Tasks
  class Create
    include Api::Action
    include JSONAPI::Hanami::Action

    deserializable_resource :task

    params do
      required(:task).schema do
        required(:description)
      end
    end

    def call(params)
      self.data = tasks_repository.create(task_params(params))
      self.status = 200
    end

    def task_params(params)
      params[:task].merge(list_id: params[:list_id])
    end

    def tasks_repository
      @tasks_repository ||= TaskRepository.new
    end
  end
end
