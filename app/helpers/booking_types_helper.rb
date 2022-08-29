module BookingTypesHelper
    def duration(type)
        if type.duration == 60
            return "1 hr"
        else
            type.duration.to_s + " mins"
        end
    end
end
