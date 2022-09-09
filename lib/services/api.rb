class Api 

    URL = "https://api.genshin.dev/"

    def self.load_data
        uri = URI('hhttps://api.genshin.dev/characters')
        response = Net::HTTP.get(uri) 

        data = JSON.parse(response)

        data.each do |genshin_character_data|
            GenshinChar.new(genshin_character_data["Name"]), genshin_character_data["Description"])
        end
    end

end