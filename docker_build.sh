BUILDID=$1
USERNAME=$2
PASSWORD=${3}

docker login -u $USERNAME ${PASSWORD} interviewregistry
docker build -t bestappever .
docker tag bestappever interviewregistry/bestappever:$BUILDID
docker push interviewregistry/bestappever:$BUILDID
