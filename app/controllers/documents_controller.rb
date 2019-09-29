class DocumentsController < ApplicationController

  def index
    @documents = Document.all
  end

  def show
    @documents = Document.find(params[:id])
  end

  def new
    @documents = Document.new
  end

  def create
    @document = Document.new(allowed_params)
    @document.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to document_path(@document)
  end

  def edit
    @documents = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    @document.update(params[:document])
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to document_path(@document)
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    # no need for app/views/documents/destroy.html.erb
    redirect_to document_path(@document)
  end

  def allowed_params
    params.require(:document).permit(:name, :client, :year, :localisation, :subject, :cabinet)
  end
end
