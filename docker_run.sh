BUILDID=$1
USERNAME=$2
PASSWORD=${3}

docker login -u $USERNAME ${PASSWORD} interviewregistry
docker pull interviewregistry.azurecr.io/bestappever:$BUILDID
docker run -d -p 3000:3000 interviewregistry.azurecr.io/bestappever:$BUILDID
