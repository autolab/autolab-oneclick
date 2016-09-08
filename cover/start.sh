service docker start;
docker build -t autograding_image vmms/;
service supervisor start;
