module Api::Controllers::Tasks
  class Show
    include Api::Action
    include JSONAPI::Hanami::Action

    def call(params)
      self.data = tasks_repository.find(params[:id])
      self.status = 200
    end

    def tasks_repository
      @tasks_repository ||= TaskRepository.new
    end
  end
end
