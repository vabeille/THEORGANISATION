class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(allowed_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    @document.save
    redirect_to document_path(@document)
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    @document.update(allowed_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to document_path(@document)
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    # no need for app/views/documents/destroy.html.erb
    redirect_to documents_path
  end

  private

  def allowed_params
    params.require(:document).permit(:name, :client, :year, :localisation, :subject, :cabinet)
  end
end
