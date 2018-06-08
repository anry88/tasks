t1=ARGV[0].to_i
t2=ARGV[1].to_i
t=t1+t2

def printNumber(t)
    str=""
    day=86400
    hour=3600
    minute=60
    
    if t >= day
        count = t/day
        if count > 1
            str = str+count.to_s+" дня "
        else str = str +count.to_s+" день "
        end
        t = t - (count*day)
    end
    
    if t >= hour
       count = t/hour
       if count==1 || count==21
          str = str+count.to_s+" час "
        elsif (count >= 2 && count <= 4) || (count >= 22 && count <= 24)
          str = str+count.to_s+" часа "
        else str = str+count.to_s+" часов "
        end
       t = t - (count*hour)
    end
    
    if t >= minute
        count = t/minute
        if count%10 == 1 && !(count >= 11 && count <= 14)
            str = str+count.to_s+" минута "
        elsif count%10 >= 2 && count%10 <= 4 && !(count >= 11 && count <= 14)
            str = str+count.to_s+" минуты "
        else str = str+count.to_s+" минут "
        end
        t = t - (count*minute)
    end
    
    if t > 0
        if t%10 == 1 && !(t >= 11 or t <= 14)
            str = str+t.to_s+" секунда"
        elsif t%10 >= 2 && t%10 <= 4 && !(t >= 11 && t <= 14)
            str = str+t.to_s+" секунды"
        else str = str+t.to_s+" секунд"
        end
    end
    
    puts str
end

if t1 >= 1 && t1 <= 100000 && t2 >= 1 && t2 <=100000
    printNumber(t)
end