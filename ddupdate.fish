function ddupdate --description "Create a datadog skeleton cookbook"
  mkdir -p  ~/.ssh/controlmasters/
  rm -f ~/.ssh/hosts/prod.txt
  rm -f ~/.ssh/hosts/stag.txt
  curl -s http://sshhosts.octohost.datad0g.com/prod.txt > ~/.ssh/hosts/prod.txt
  curl -s http://sshhosts.octohost.datad0g.com/staging.txt > ~/.ssh/hosts/stag.txt
end
