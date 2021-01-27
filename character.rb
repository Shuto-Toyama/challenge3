require "./message"

class Character
  include Message
  attr_accessor :hp
  attr_reader :offense, :defense, :name

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end
