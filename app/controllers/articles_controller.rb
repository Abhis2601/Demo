
class ArticlesController < ApplicationController
  def form
    @articles=Article.all

    # respond_to do |format|
    #   format.json{ render json:@articles}
    # end
  end

  def create_post
    @article=Article.new(data)
    if @article.save
      redirect_to action: :form
    end
  end

  def new_post
    @article=Article.new
  end

  private 

  def data
    params.require(:article).permit(:tittle,:description)
  end
end
