module Api::Controllers::Lists
  class Index
    include Api::Action
    include JSONAPI::Hanami::Action

    def call(params)
      self.data = list_repository.all
      self.status = 200
    end

    def list_repository
      @list_repository ||= ListRepository.new
    end
  end
end
