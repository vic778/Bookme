module BookingTypesHelper
  def duration(type)
    if type.duration == 60
      "1 hr"
    else
      "#{type.duration} mins"
    end
  end
end
