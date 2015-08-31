require 'spec_helper'

describe OmniAuth::Strategies::Crunch do
  subject do
    OmniAuth::Strategies::Crunch.new({})
  end

  context 'client options' do
    it 'should have correct name' do
      subject.options.name.should eq('crunch')
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://demo.crunch.co.uk')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq(
        '/crunch-core/login/oauth-login.seam'
      )
    end
  end
end
