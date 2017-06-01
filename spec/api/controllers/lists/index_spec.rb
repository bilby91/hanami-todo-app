require 'spec_helper'
require_relative '../../../../apps/api/controllers/lists/index'

describe Api::Controllers::Lists::Index do
  let(:action) { Api::Controllers::Lists::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
