class InquiryController < ApplicationController
    def index
      @inquiry = Inquiry.new
      @inquiry.init(params.has_key?(:inquiry) ? params[:inquiry] : {})
    end
  
    def confirm
    end
  
    def thanks
    end
end