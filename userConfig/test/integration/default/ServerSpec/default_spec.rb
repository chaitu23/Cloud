describe user(node['name']) do
  it { should exist }
end

describe group(node['groupPrimary']) do
  it { should exist }
end

describe user(node['name']) do
  it { should belong_to_group node['groupPrimary']}
end

describe user(node['name']) do
  it { should have_uid node['uid']}
end

describe user(node['name']) do
  it { should belong_to_group node['groupSecondary'] }
end
