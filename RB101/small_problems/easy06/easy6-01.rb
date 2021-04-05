def dms(number)
  degree = number.floor
  minute = (number - degree) * 60
  second = (minute - minute.floor) * 60

  minute = minute < 10 ? minute.floor.to_s.prepend('0') : minute.floor.to_s
  second = second < 10 ? second.floor.to_s.prepend('0') : second.floor.to_s

  output = "#{degree.to_s}\xC2\xB0#{minute}'#{second}\""
end


puts dms(30) == %(30°00'00")
puts dms(76.73)
 # == %(76°43'48")
puts dms(254.6) 
# == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")