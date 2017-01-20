module SobiCli::BikeHelper
  def token(length = 690)
    range = [*'0'..'9', *'A'..'Z', *'a'..'z']
    Array.new(length) { range.sample }.join
  end

  def short_id
    require 'date'
    t = DateTime
    id = t.now.strftime("%Y%m%d%k%M%S%L")
    id = id.to_i.to_s(36)
  end
end
