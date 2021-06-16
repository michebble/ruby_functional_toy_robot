require "toy_robot"

RSpec.describe ToyRobot do
  subject(:toy_robot) { described_class }
  let(:commands) { ["PLACE 0,0,NORTH", "MOVE", "REPORT"] }

  it "returns the expected output" do
    expect(toy_robot.call(commands)).to eq("0,1,NORTH")
  end
end
