require 'date'
require 'ap'
require 'debugger'

class When

    attr_accessor :arrival

    def initialize(arrival)
        @arrival = arrival
        #convert
    end

    def convert
       DateTime.parse(arrival).strftime("%H:%M")
    end

    def change_times
        #eu_time = []
        arrival.map! do |x|
          DateTime.parse(x).strftime("%H:%M")
        end
        #eu_time
    end

    def avg_times
        change_times

    end

end

 #b = When.new("1:00pm")
# b.convert
