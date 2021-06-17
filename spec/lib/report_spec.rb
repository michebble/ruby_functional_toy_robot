require "report"

RSpec.describe Report do
  subject(:report) { described_class }

  it "reports the x, y and direction of the data", :aggregate_failures do
    data1 = {x: 0, y: 1, direction: :north}
    data2 = {x: 0, y: 0, direction: :west}
    data3 = {x: 3, y: 3, direction: :north}
    expect(report.call(data1)).to eq "0,1,NORTH"
    expect(report.call(data2)).to eq "0,0,WEST"
    expect(report.call(data3)).to eq "3,3,NORTH"
  end
end
