require 'rails_helper'

RSpec.describe Api::V1::SearchesController, :type => :controller do

  let(:vendor) { Vendor.new(id: 1, name: 'Example Vendor Name', description: 'Example vendor description.') }
  let(:product) { Product.new(id: 1, name: 'Example Product Name', description: 'Example product description.') }
  let(:json) { JSON.parse(response.body) }

  it { should route(:get, 'v1/searches').to(action: :index) }

  describe 'GET #index - /v1/searches' do
    before do
      StoreIndex.stub_chain(:query, :load, :to_a).and_return([vendor, product])
      get :index, q: 'oak'
    end

    it { is_expected.to respond_with :ok }

    it 'returns array of records' do
      expect(json["searches"]).to be_a Array
    end

    it 'should have `searches` as a ' do
      expect(json).to have_key("searches")
    end

    it 'should respond with one product' do
      expect(json["searches"].map { |r| r["title"] }).to include(product.name)
    end

    it 'should respond with one vendor' do
      expect(json["searches"].map { |r| r["title"] }).to include(vendor.name)
    end
  end
end
