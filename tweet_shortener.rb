# Write your code here.
def word_substituter(sent)
dict={
    "hello" => 'hi',
"to" => "2",
 "two" => "2",
  "too" => '2' ,
"for" => "4",
 "four"=> '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
}
arr=sent.split
arr.each_with_index do |word,i|
arr[i]= dict[word.downcase] if  dict.has_key?(word.downcase)
end
arr.join(" ")
end

def bulk_tweet_shortener(arr)
arr.each do |sent|
puts word_substituter(sent)
end
end

def selective_tweet_shortener(sent)
    return nil if sent==nil
    if sent.length >=140
        return word_substituter(sent)
         
    else
    return sent
    end
end

def shortened_tweet_truncator(sent)
if sent.length > 140
    return sent[0..135]+" ..."
end
sent
end