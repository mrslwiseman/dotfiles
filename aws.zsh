ack-ssm-env() {
  params=$(aws ssm get-parameters-by-path --with-decryption --recursive --path $1 | jq -r '.Parameters[] | (.Name + " " + .Value)' | sort -u)
  if [ -z "$2" ]; then
    echo "filtering none"
    echo $params
  else
    echo "filtering $2"
    echo $params | ack $2
  fi
}
