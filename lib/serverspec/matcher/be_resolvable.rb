RSpec::Matchers.define :be_resolvable do
  match do |name|
    name.resolvable?(@type)
  end

  description do
    message = 'be resolvable'
    message << " by #{type} " if @type
    message
  end

  chain :by do |type|
    @type = type
  end
end
