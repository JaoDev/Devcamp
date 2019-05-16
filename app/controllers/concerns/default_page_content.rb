module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Devcamp | My Portfolio Web Site"
    @seo_keywords = "Jesus Almirco | Portfolio"
  end
end
