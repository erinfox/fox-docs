class RubySymbolsController < ApplicationController

  # GET /ruby_symbols or /ruby_symbols.json
  def index
    @ruby_symbols = RubySymbol.all
    return unless params[:search]

    @ruby_symbols = @ruby_symbols.where(sign: [params[:search]])
  end

  # GET /ruby_symbols/1 or /ruby_symbols/1.json
  def show
    @ruby_symbol = RubySymbol.find(params[:id])
  end

  # GET /ruby_symbols/new
  def new
    @ruby_symbol = RubySymbol.new
  end

  # GET /ruby_symbols/1/edit
  def edit
    @ruby_symbol = RubySymbol.find(params[:id])
  end

  # POST /ruby_symbols or /ruby_symbols.json
  def create
    @ruby_symbol = RubySymbol.new(ruby_symbol_params)

    respond_to do |format|
      if @ruby_symbol.save
        format.html { redirect_to @ruby_symbol, notice: "Ruby symbol was successfully created." }
        format.json { render :show, status: :created, location: @ruby_symbol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruby_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_symbols/1 or /ruby_symbols/1.json
  def update
    @ruby_symbol = RubySymbol.find(params[:id])
    respond_to do |format|
      if @ruby_symbol.update(ruby_symbol_params)
        format.html { redirect_to @ruby_symbol, notice: "Ruby symbol was successfully updated." }
        format.json { render :show, status: :ok, location: @ruby_symbol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruby_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_symbols/1 or /ruby_symbols/1.json
  def destroy
    @ruby_symbol = RubySymbol.find(params[:id])
    @ruby_symbol.destroy

    respond_to do |format|
      format.html { redirect_to ruby_symbols_path, status: :see_other, notice: "Ruby symbol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def ruby_symbol_params
      params.require(:ruby_symbol).permit(:sign, :name, :definition, :example)
    end
end
