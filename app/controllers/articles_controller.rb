class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:title, :body, :user_id)
    end

end
