require "toy_robot"

RSpec.describe ToyRobot do
  subject(:toy_robot) { described_class }

  it "returns the expected output for the problem examples", :aggregate_failures do
    example_a = ["PLACE 0,0,NORTH", "MOVE", "REPORT"]
    example_b = ["PLACE 0,0,NORTH", "LEFT", "REPORT"]
    example_c = ["PLACE 1,2,EAST", "MOVE", "MOVE", "LEFT", "MOVE", "REPORT"]
    expect(toy_robot.call(example_a)).to eq("0,1,NORTH")
    expect(toy_robot.call(example_b)).to eq("0,0,WEST")
    expect(toy_robot.call(example_c)).to eq("3,3,NORTH")
  end
end
