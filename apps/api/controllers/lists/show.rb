module Api::Controllers::Lists
  class Show
    include Api::Action
    include JSONAPI::Hanami::Action

    def call(params)
      self.data = list_repository.find(params[:id])
      self.status = 200
    end

    def list_repository
      @list_repository ||= ListRepository.new
    end
  end
end
