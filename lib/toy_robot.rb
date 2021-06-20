require "pry"

require "place"
require "move"

class ToyRobot
  class << self
    COMMAND_ACTIONS = {
      "PLACE" => Place,
      "MOVE" => Move
    }
    def call(robot, commands)
      commands.inject(robot) do |robot, command|
        COMMAND_ACTIONS
          .fetch(command.split.first, :return_robot)
          .then { |action| action.call(robot, command) }
      end
    end

    private

    def return_robot
      proc { |robot, _| robot }
    end
  end
end
