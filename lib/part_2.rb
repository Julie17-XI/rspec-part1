# Solution 1
# def hipsterfy(word)
#     i=word.length-1
#     while !"aeiou".include?(word[i])
#         i-=1
#         return word if i==-1
#     end
#     word=word[0...i]+word[i+1..-1]
# end

#Solution 2
def hipsterfy(word)
    i=word.length-1
    while i>0
        if "aeiou".include?(word[i])
            return word[0...i]+word[i+1..-1]
        end
        i-=1
    end
    word
end
# In a while loop, heed when to increment/decrement

# Solution 1
# def vowel_counts(str)
#     vowel_hash=Hash.new(0)
#     str.each_char {|char| vowel_hash[char.downcase]+=1 if "aeiouAEIOU".include?(char)}
#     vowel_hash
# end

# Solution 2
def vowel_counts(str)
    counts=Hash.new(0)
    str.downcase.each_char {|char| counts[char]+=1 if "aeiou".include?(char)}
    counts
end
# Text Editor always read from left to right

def caesar_cipher(message,n)
    alphabet_arr=('a'..'z').to_a
    new_message=""
    message.each_char do |char|
        if alphabet_arr.include?(char)
            old_idx=alphabet_arr.index(char)
            new_idx=(old_idx+n)%26
            new_message+=alphabet_arr[new_idx]   
        else
            new_message+=char
        end
    end
    new_message
end

#liz u made it by the end