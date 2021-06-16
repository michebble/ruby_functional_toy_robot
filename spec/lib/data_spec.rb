require "data"

RSpec.describe Data do
  subject(:data) { described_class.call(kwargs) }
  let(:kwargs) { {} }

  it "returns a data shape", :aggregate_failures do
    expect(data).to eq(
      placed: false,
      commands: [],
      direction: nil,
      x: nil,
      y: nil,
      board_size: 4
    )
    expect(data).to be_frozen
  end

  context "when it is called with kwargs" do
    let(:kwargs) do
      {
        placed: true,
        commands: ["MOVE", "REPORT"],
        direction: :north,
        x: 0,
        y: 0,
        board_size: 4
      }
    end

    it "returns a data shape that matches the kwargs" do
      expect(data).to eq(
        placed: true,
        commands: ["MOVE", "REPORT"],
        direction: :north,
        x: 0,
        y: 0,
        board_size: 4
      )
      expect(data).to be_frozen
    end
  end
end
