# This repository contains dockerized file for the very famous game 2048.
# Steps to follow
Prerequisite 
Install docker on your environment (local)
check if your port 80 is free if not make it available for this project. (goggle how to do that)

Then follow the below steps 

  1 clone this repository on your local machine.
  
  2 run command to build the image -- docker build -t <image name> . (The dot is used if you are in the same directory where the docker file is present)
  
  3 run command to build the conatiner -- docker run -d -p 80:80 <image tag> (The image tag will be generated after image build) 
  
  4 hit your browser ---> http://localhost:80
  
  If everything is file you should see a awesome page if not then debug and report the issue.
  
