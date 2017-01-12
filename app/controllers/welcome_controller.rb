class WelcomeController < ApplicationController

def index
  @website = Website.all
end

end
