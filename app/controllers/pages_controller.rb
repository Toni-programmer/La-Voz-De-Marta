class PagesController < ApplicationController
  def home
    @posts = Post.order(published_at: :desc).limit(3)
    @testimonials = Testimonial.order(created_at: :desc)
  end
end
