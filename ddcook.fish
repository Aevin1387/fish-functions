function ddcook --description "Create a datadog skeleton cookbook"
  if test $argv[1]
    git clone git@github.com:DataDog/dd-skeleton.git $argv[1]
    cd $argv[1]; rm -rf .git/
    egrep -r "dd-skeleton" * .kitchen* | cut -d ':' -f 1 | sort | uniq | xargs -n 1 sed -i '' "s/dd-skeleton/$argv[1]/g"
    git init .; and git add .; and git commit -a -m 'First commit.'
    subl .
  else
    echo "Need the name of the cookbook."
  end
end
