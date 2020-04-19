#Task 1
#100 containers, 25 will be of alpine,25 of fedora,25 of centos,25 of java which runs forever
#Using Python 
```
import os

for num in range(1,101):
	if num<=25:
		os.system("sudo docker run -itd --restart unless-stopped --name adhocnw{num} alpine".format(num))
	elif num<=50:
		os.system("sudo docker run -itd --restart unless-stopped --name adhocnw{num} fedora".format(num))
	elif num<=75:
		os.system("sudo docker run -itd --restart unless-stopped --name adhocnw{num} centos".format(num))
	elif num<=100:
		os.system("sudo docker run -itd --restart unless-stopped --name adhocnw{num} java".format(num))
os.system("sudo docker ps")
```



#Task 2
#Names and container created date should be stored in a text file
```
docker ps -a --format "table {{.Names}}\t{{.CreatedAt}}" > info.txt
cat info.txt
```




#Task 3
#Firefox should e the parent image of the docker image
#Dockerfile
```
FROM ubuntu
RUN apt-get update
RUN apt-get install -y firefox
ENV HOME /home/harshit
CMD /usr/bin/firefox
```
```
sudo docker build -t har .
```
```
sudo docker run -itd --name harshit har
```



#Task 4
#Name, CPU usage and memory usage of all containers should be in a file named Ram.txt
```
docker stats --all --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}" > Ram.txt
cat Ram.txt
```
