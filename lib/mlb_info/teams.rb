
class MLBInfo::Teams
    attr_accessor :name, :url, :website

    @@all = []

    def self.new_from_index(r)
        self.new(
            r.css("div.u-text-h4").text,
            r.css("div.p-featured-content__media a").attribute("href").text,
            r.css("div.p-wysiwyg a").first.text
        )
    end

    def initialize(name=nil, url=nil, website=nil)
        @name = name
        @url = url
        @website = website
        @@all << self
    end
    
    def self.all
        @@all
    end

    def park
        @park ||= doc.css("#_pagebuilder_index > main > div.container.container--official-information.container--official-information-index > div > div > div.l-grid__content.l-grid__content--inset > div > div:nth-child(3) > div > div > a > div.p-sidekick__body > div").text.strip
    end

    def doc
        @doc ||= Nokogiri::HTML(open(self.url))
    end

end
