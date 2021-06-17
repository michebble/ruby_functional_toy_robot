class Report
  class << self
    def call(data)
      [data[:x], data[:y], data[:direction].upcase].join(",")
    end

    def to_proc
      ->(data) { call(data) }
    end
  end
end
