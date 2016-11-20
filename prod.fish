function prod --description "SSH to prod host"
  if test $argv[1]
    set IP (grep $argv[1] ~/.ssh/hosts/prod.txt | cut -d ' ' -f 1)
    ssh $IP.prod
  else
    echo "Need the name of the host."
  end
end
