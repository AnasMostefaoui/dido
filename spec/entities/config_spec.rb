require 'spec_helper'

describe "Dido:Entities::Config" do

  context 'adding platforms' do

    config = nil

    before :example do
      config = Dido::Entities::Config.new "test"
    end

    it 'should add tv_os platform' do
      expect(config.with_tv_os.platforms.to_a).to eq([:tvos])
    end

    it 'should add watch_os platform' do
      expect(config.with_watch_os.platforms.to_a).to eq([:watchos])
    end

    it 'should add ios platform' do
      expect(config.with_ios.platforms.to_a).to eq([:ios])
    end

    it 'should add osx platform' do
      expect(config.with_osx.platforms.to_a).to eq([:osx])
    end

  end

end
