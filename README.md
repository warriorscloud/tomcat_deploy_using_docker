Hemadri Done

Setps to Build Tomcat Dockerfile
--------------------------------

First build the image using this Dockerfile as below command
docker build -t <put-some-image-name>
Ex: docker build -t tomcat
  
  
In the working directory of Dockerfile run the command as 
docker run -d -p <some-host-port>:8080 <your-image-name>
Ex: docker run -d -p 18080:8080 tomcat
  

After running this we need to check the service is working or not.
in host machine give
curl localhost:<given-host-port-number>
Ex: curl localhost:18080
