class ApplicationFormWithoutModel < Reform::Form
  def initialize(model = OpenStruct.new)
    super(model)
  end
end
