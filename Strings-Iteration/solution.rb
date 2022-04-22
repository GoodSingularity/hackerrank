def count_multibyte_char(text)
    @count = 0
    text.chars.each{|x|
        if x.bytesize > 1
            @count = @count + 1
        end
    }
    return @count
end
