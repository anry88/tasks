s=ARGV[0].dup
k=ARGV[1].to_i
n=s.size
array = []

 def encrypt(s, k, array)
    s.each_byte do |c|
        i = 1
        while i <= k
        c = c + 1
            if c == 91
                c = 97
            end
            if c == 123
                c = 65
            end
        i = i + 1
        end
        array.push(c)
    end
end

s = s.force_encoding(Encoding::ASCII)

if n >= 1 && n <= 10000 && k >= 0 && k <= 10000
    encrypt(s, k, array)
end

str = array.pack('c*')

puts str