RSpec::Matchers.define :be_mounted do
  match do |path|
    path.mounted?(@attr, @only_with)
  end

  description do
    message = 'be mounted'
    message << " with #{@attr}" unless @only_with
    message << " only with #{@attr}" if @only_with
    message
  end

  chain :with do |attr|
    @attr      = attr
    @only_with = false
  end

  chain :only_with do |attr|
    @attr      = attr
    @only_with = true
  end
end
