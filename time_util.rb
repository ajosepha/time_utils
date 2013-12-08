require 'date'
require 'ap'
require 'debugger'
require 'time'

class When

    attr_accessor :arrival

    def initialize(arrival)
        @arrival = arrival
        @minutes = []
        change_times
    end

    def convert
       DateTime.parse(arrival).strftime("%H:%M")
    end

    def change_times
        #eu_time = []
        arrival.map! do |x|
          DateTime.parse(x).strftime("%H:%M")
        end
        ap arrival
        #eu_time
    end

    def hours_to_minutes
        hm = []
        minutes = []
        arrival.each do |element|
            hm << element.split(":")
        end
         hm.each do |first_element|
            minutes << first_element[0].to_i * 60
            minutes << first_element[1].to_i
        end
        ap minutes
        time = minutes.reduce(:+)/arrival.length.to_f
        ap time/60
    end



    # def time_in_minutes
    #     # change_times
    #     # hour_min = []
    #     # arrival.map! do |hour|
    #     #     hour.split(":")
    #     #     hour.each do |minutes|
    #     #         hour_min << minutes[0]
    #     #     end
    #     # end
    #     # ap hour_min
    # end


    # def avg_times
    #     change_times
    #     arrival.map! do |x|
    #         Time.parse(x).to_i
    #     end
    #     avg = arrival.reduce(:+).to_f / arrival.size
    #     ap avg
    # end
    #     # size = arrival.size
    #     # arrival.map! do |x|
    #     #     x.split(":")

  

end

 b = When.new(["1:30pm", "2:00pm"])
 b.hours_to_minutes