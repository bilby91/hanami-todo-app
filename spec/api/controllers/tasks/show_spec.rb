require 'spec_helper'
require_relative '../../../../apps/api/controllers/tasks/show'

describe Api::Controllers::Tasks::Show do
  let(:action) { Api::Controllers::Tasks::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
