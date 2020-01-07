${registration-token}=$args[0]
docker exec -it gitlab-runner `
  gitlab-runner register `
 --non-interactive `
 --registration-token ${registration-token} `
 --locked=false `
 --description instance-scope `
 --url http://gitlab-web `
 --executor docker `
 --docker-image docker:stable `
 --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" `
 --docker-network-mode gitlab-network