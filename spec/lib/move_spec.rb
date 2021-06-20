require "move"

RSpec.describe Move do
  subject(:move) { described_class }

  it "moves y positively when facing NORTH" do
    expect(move.call({facing: "NORTH", y: 0}, "MOVE")).to eq(
      {facing: "NORTH", y: 1}
    )
  end

  it "moves y negatively when facing SOUTH" do
    expect(move.call({facing: "SOUTH", y: 2}, "MOVE")).to eq(
      {facing: "SOUTH", y: 1}
    )
  end

  it "moves x positively when facing EAST" do
    expect(move.call({facing: "EAST", x: 0}, "MOVE")).to eq(
      {facing: "EAST", x: 1}
    )
  end

  it "moves x negatively when facing WEST" do
    expect(move.call({facing: "WEST", x: 2}, "MOVE")).to eq(
      {facing: "WEST", x: 1}
    )
  end

  context "when trying to move past the edge of the board" do
    it "does not move y positively when facing NORTH" do
      expect(move.call({facing: "NORTH", y: 4}, "MOVE")).to eq(
        {facing: "NORTH", y: 4}
      )
    end

    it "does not move y negatively when facing SOUTH" do
      expect(move.call({facing: "SOUTH", y: 0}, "MOVE")).to eq(
        {facing: "SOUTH", y: 0}
      )
    end

    it "does not move x positively when facing EAST" do
      expect(move.call({facing: "EAST", x: 4}, "MOVE")).to eq(
        {facing: "EAST", x: 4}
      )
    end

    it "does not move x negatively when facing WEST" do
      expect(move.call({facing: "WEST", x: 0}, "MOVE")).to eq(
        {facing: "WEST", x: 0}
      )
    end
  end
end
