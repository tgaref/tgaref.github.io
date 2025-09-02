using Dates

function hfun_today()
    dt = Dates.today()
    month = monthname(dt)
    return "$month $(day(dt)), $(year(dt))"
end
