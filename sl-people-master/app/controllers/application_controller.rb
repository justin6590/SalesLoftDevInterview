class ApplicationController < ActionController::Base
  protected

  # Protected: Decodes pagination info. This is only loaded by
  # controller actions that need it.
  def load_pagination
    @page = (params[:page].blank? ? 1 : params[:page].to_i)
    @per_page = 15
    if @page.negative?
      response = {
        errors: [I18n.t('errors.negative_page')]
      }
      render status: :bad_request, json: response
      return false
    end
  end
end
