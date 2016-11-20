function staging --description "SSH to staging host"
  if test $argv[1]
    set IP (grep $argv[1] ~/.ssh/hosts/stag.txt | cut -d ' ' -f 1)
    ssh $IP.staging
  else
    echo "Need the name of the host."
  end
end
