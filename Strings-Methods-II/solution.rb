def strike(text)
    return "<strike>"+text+"</strike>"
end

def mask_article(text, words)
    for word in words
        text = text.gsub! word, strike(word)
    end
    return text
end

        
