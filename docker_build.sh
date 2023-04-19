BUILDID=$1
USERNAME=$2
PASSWORD=${3}

docker login -u $USERNAME ${PASSWORD} interviewregistry.azurecr.io
docker build -t bestappever .
docker tag bestappever interviewregistry.azurecr.io/bestappever:$BUILDID
docker push interviewregistry.azurecr.io/bestappever:$BUILDID
