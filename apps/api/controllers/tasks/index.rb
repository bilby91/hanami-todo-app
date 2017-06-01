module Api::Controllers::Tasks
  class Index
    include Api::Action
    include JSONAPI::Hanami::Action

    def call(params)
      self.data = tasks_repository.for_list(params[:list_id])
      self.status = 200
    end

    def tasks_repository
      @tasks_repository ||= TaskRepository.new
    end
  end
end
