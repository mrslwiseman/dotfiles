load-env() {
  export $(cat .env | sed 's/#.*//g' | xargs)
}
