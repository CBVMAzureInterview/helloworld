BUILDID=$1
USERNAME=$2
PASSWORD=${3}

docker login -u $USERNAME ${PASSWORD} interviewregistry
docker pull interviewregistry/bestappever:$BUILDID
docker run -d -p 3000:3000 interviewregistry/bestappever:$BUILDID
