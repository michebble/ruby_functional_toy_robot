class Data
  def self.call(kwargs)
    {
      placed: kwargs.fetch(:placed, false),
      commands: kwargs.fetch(:commands, []),
      direction: kwargs.fetch(:direction, nil),
      x: kwargs.fetch(:x, nil),
      y: kwargs.fetch(:y, nil),
      board_size: kwargs.fetch(:board_size, 4)
    }.freeze
  end
end
