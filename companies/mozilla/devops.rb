# Mozilla DevOp
dep 'aws-vault.cask'

dep('aws-sam-cli.managed') do
  met? { in_path? 'sam' }
  provides 'aws-sam-cli'
end

dep 'minikube.cask'

dep 'awscli.managed' do
  provides 'aws'
end

dep 'serverless.managed'

dep 'gnupg.managed' do
  met? { in_path? 'gpg' }
  provides 'gnupg'
end

dep 'papertrail.gem' do
  installs 'papertrail == 0.9.14'
  provides 'papertrail'
end

dep 'travis.gem' do
  installs 'travis == 1.8.10'
  provides 'travis'
end

dep 'mozilla devops' do
  requires [
    'git.managed',
    'homebrew',
    'homebrew cask',
    'aws-vault.cask',
    'awscli.managed',
    'aws-sam-cli.managed',
    'gnupg.managed',
    'minikube.cask',
    'papertrail.gem',
    'travis.gem',
    'serverless'
  ]
end
