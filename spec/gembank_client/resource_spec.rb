require File.expand_path('../../spec_helper', __FILE__)

describe GembankClient::Resource do
  it 'should have a default URL specified' do
    GembankClient::Resource::DEFAULT_URL.should == 'https://gembank.org'
  end

  describe 'when releasing a gem' do
    let(:resource) { GembankClient::Resource.new('foobar123', 'spec/fixtures/gems/some.gem') }

    it 'should post to push URL with gem file' do
      RestClient.should_receive(:post) do |url, options|
        url.should == 'https://gembank.org/push/foobar123'
        options[:gem].path.should == 'spec/fixtures/gems/some.gem'
      end
      resource.release
    end
  end
end
