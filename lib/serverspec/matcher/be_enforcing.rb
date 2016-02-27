RSpec::Matchers.define :be_enforcing do
  match do |selinux|
    selinux.enforcing?(@with_policy)
  end

  description do
    message = 'be enforcing'
    message << ' with policy #{@with_policy}' if @with_policy
    message
  end

  chain :with_policy do |with_policy|
    @with_policy = with_policy
  end
end
