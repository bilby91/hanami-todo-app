require 'spec_helper'
require_relative '../../../../apps/api/controllers/lists/show'

describe Api::Controllers::Lists::Show do
  let(:action) { Api::Controllers::Lists::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
