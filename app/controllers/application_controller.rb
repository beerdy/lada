class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super
    content
  end

  def content
    @message = Message.new
    Content.all.each do |c|
      @title = c if c.url == 'title'
      @headerr = c if c.url == 'headerr'
      @policy = c.description if c.url == 'policy'
      @social = c if c.url == 'social'
      @service_1 = c if c.url == 'service_1'
      @code = c if c.url == 'code'
      @logo = c if c.url == 'logo'
      eval(c.description) if c.url == 'variables'
    end
  end
end
