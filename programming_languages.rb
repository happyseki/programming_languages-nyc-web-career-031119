def reformat_languages(languages)
  new_hash = {}
  languages.each do|style, value|
     value.each do|name, contents|
      contents.each do|k, v |
    new_hash[name] = {
      k => v, 
      "style"=>style 
    }
      end
     end 
  end
new_hash 
 # your code here
end
