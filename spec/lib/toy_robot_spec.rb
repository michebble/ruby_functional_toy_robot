require "toy_robot"

RSpec.describe ToyRobot do
  subject(:toy_robot) { described_class }

  it "places" do
    expect(toy_robot.call({}, ["PLACE 0,0,NORTH"])).to eq({
      facing: "NORTH",
      x: 0,
      y: 0
    })
  end

  it "moves" do
    expect(toy_robot.call({}, ["PLACE 0,0,NORTH", "MOVE"])).to eq({
      facing: "NORTH",
      x: 0,
      y: 1
    })
  end

  xit "turns" do
    robot = {
      facing: "NORTH",
      x: 0,
      y: 0
    }

    expect(toy_robot.call(robot, ["LEFT"])).to eq({
      facing: "WEST",
      x: 0,
      y: 0
    })
  end

  # xit "returns the expected output for the problem examples", :aggregate_failures do
  #   example_a = ["PLACE 0,0,NORTH", "MOVE", "REPORT"]
  #   example_b = ["PLACE 0,0,NORTH", "LEFT", "REPORT"]
  #   example_c = ["PLACE 1,2,EAST", "MOVE", "MOVE", "LEFT", "MOVE", "REPORT"]
  #   expect(tr.call(example_a)).to eq("0,1,NORTH")
  #   expect(tr.call(example_b)).to eq("0,0,WEST")
  #   expect(tr.call(example_c)).to eq("3,3,NORTH")
  # end
end
