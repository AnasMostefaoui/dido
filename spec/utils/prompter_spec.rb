require 'spec_helper'

describe "Dido::Utils::Prompter" do
  
  it "should properly generate the config according the user inputs" do
    input = MockInput.new ["y", "n", "y", "n"]
    prompter = Dido::Utils::Prompter.new(input)
    config = Dido::Entities::Config.new []
    c = prompter.run(config)
    expect(c.platforms.to_a).to eq([:osx, :tvos])
  end

end


class MockInput

  def initialize(responses)
    @responses = responses
  end

  def read
    @responses.delete_at @responses.length-1
  end

end