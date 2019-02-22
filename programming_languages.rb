def reformat_languages(languages)
 new_hash = {}

  languages.each do |kind, data|
    data.each do |language, type_data|
      type_data.each do |type, interpretation|
        if new_hash.empty?
          new_hash[language] = {type => interpretation, style: [kind]}
        elsif !new_hash.empty? && language == :javascript
          new_hash[language][:style] << kind
        end
      end
    end
  end

  new_hash

 # your code here
end
