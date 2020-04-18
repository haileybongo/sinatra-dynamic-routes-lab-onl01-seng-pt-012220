require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    
    phrase_array = []
    until @number == 0 
      @number -= 1
      phrase_array << @phrase
    end
    phrase_array.join(" ")
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    
    word_array = []
    word_array << params[:word1]
    word_array << params[:word2]
    word_array <<  params[:word3]
    word_array << params[:word4]
    @word5 = params[:word5]
    
    wor

end