class Place
  class << self
    def call(robot_data, command)
      command.split.last.split(",").then do |details|
        case details
        in [x, y, facing]
          robot_data.merge(x: x.to_i, y: y.to_i, facing: facing)
        else
          robot_data
        end
      end
    end
  end
end
