# user settings
# docker
du() {
  docker compose up $1
}
dd() {
  docker compose down $1
}
de() {
  docker compose exec $1 bash 
}
alias dl="docker compose logs -f"
alias dp="docker ps -a"