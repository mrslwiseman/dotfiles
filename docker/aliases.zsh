alias dps='docker ps --format "table {{.Names }}\t{{.Image}}\t{{ .State }}\t{{ .Status }}"'
alias d='docker $*'
alias d-c='docker-compose $*'

load-env(){
  export $(cat .env | sed 's/#.*//g' | xargs)
}
