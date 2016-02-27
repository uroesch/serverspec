RSpec::Matchers.define :be_readable do
  match do |file|
    file.readable?(@by_whom, @by_user)
  end

  description do
    message = 'be readable'
    message << " by #{@by_whom} " if @by_whom
    message << " by user #{@by_user} " if @by_user
    message
  end

  chain :by do |by_whom|
    @by_whom = by_whom
  end

  chain :by_user do |by_user|
    @by_user = by_user
  end
end
