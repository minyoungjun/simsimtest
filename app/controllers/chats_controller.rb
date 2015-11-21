class ChatsController < ApplicationController
    
    def index
        if Blog.where(:question => params[:message]).count > 0
            @blog = Blog.where(:question => params[:message]).last
        else
            @blog = nil
        end
    end
    
    
    def teach
        
        
        blog = Blog.new
        blog.question = params[:question]
        blog.answer = params[:answer]
        blog.save
        
        redirect_to :action => "index", :message => blog.question
        
        
    end
end
