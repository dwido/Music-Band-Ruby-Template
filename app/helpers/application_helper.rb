module ApplicationHelper
    def title
        base_title = "North African, Andalusian, Middle Eastern Band Music - New York"
        if @title.nil?
            base_title
        else
            "#{base_title} | #{@title}"
        end
    end
end
