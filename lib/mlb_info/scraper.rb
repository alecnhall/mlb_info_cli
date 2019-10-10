class MLBInfo::Scraper

    def get_page
        Nokogiri::HTML(open("https://www.mlb.com/team"))
    end

    def scrape_teams_index
        self.get_page.css("div.p-featured-content").each
    end

    def make_teams
        scrape_teams_index.each do |r|
          MLBInfo::Teams.new_from_index(r)
        end
    end 
    
end

# def self.name
#     doc = Nokogiri::HTML(open("https://www.mlb.com/team"))
#     @teams = []
#     doc.css("div.p-featured-content").each do |team_name|
#         name = team_name.css("div.u-text-h4").text
#         @teams << name
#     end 
#     @teams.each do |name| 
#         Teams.new(name)
#     end
#     @@all.each do |team| 
#         puts team.name   
#     end 
# end 