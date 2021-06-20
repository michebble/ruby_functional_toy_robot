class Move
  class << self
    def call(robot_data, *)
      value_within_range.curry[(0...5)].then do |board_limiter|
        case robot_data
        in {facing: "EAST", x: x, **} then robot_data.merge(x: move(:+, x, &board_limiter))
        in {facing: "NORTH", y: y, **} then robot_data.merge(y: move(:+, y, &board_limiter))
        in {facing: "SOUTH", y: y, **} then robot_data.merge(y: move(:-, y, &board_limiter))
        in {facing: "WEST", x: x, **} then robot_data.merge(x: move(:-, x, &board_limiter))
        else robot_data
        end
      end
    end

    private

    def move(operator, value, &limiter)
      change_by_one[operator, value].then(&limiter)
    end

    def value_within_range
      proc do |range, value|
        value.clamp(range.min, range.max)
      end
    end

    def change_by_one
      change_value.curry[1]
    end

    def change_value
      proc do |increment, operator, value|
        operator.to_proc.call(value, increment)
      end
    end
  end
end
