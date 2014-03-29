# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	templateData:
		site:
			title: "Yong's Website"

		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
	collections:
        pages: ->
            @getCollection("html").findAllLive({isPage:true}, [{filename:1}]).on "add", (model) ->
            	model.setMetaDefaults({layout:"default"})
    plugins:
	    ghpages:
	        deployRemote: 'target'
	        deployBranch: 'master'
}

# Export the DocPad Configuration
module.exports = docpadConfig