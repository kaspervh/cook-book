class HomeController < ApplicationController

	def index
	end

	def about
		@about_title = AboutContent.first.title
		@about_content = AboutContent.first.text
	end

end
