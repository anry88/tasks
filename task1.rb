n=ARGV[0].to_i
e=ARGV[1].to_i
count = 1
sum = 0

if 1 <= n and e <= 100
    while count <= n
        sum = sum + (count**e)
        count = count + 1
    end
end
puts sum