#!/bin/bash

docker run \
--name labelme \
-v /home/labelMe/Images/:/var/www/html/LabelMeAnnotationTool/Images \
-v /home/labelMe/Annotations/:/var/www/html/LabelMeAnnotationTool/Annotations \
-p 8080:80 \
-d \
--entrypoint "/bin/bash" \
-t labelme

# restart apache inside the container
docker exec labelme service apache2 restart
