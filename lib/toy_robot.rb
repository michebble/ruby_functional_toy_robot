require "data"
require "report"

class ToyRobot
  class << self
    def call(commands)
      Data
        .call({x: 0, y: 1, direction: :north})
        .then(&Report)
    end
  end
end
