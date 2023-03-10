sh 'sudo docker login -u sharvesh923 -p ${docker_password}'
                 sh 'sudo docker tag react-app:latest chandrashekark17/dev:react-app'
                 sh 'sudo docker push chandrashekar/dev:react-app'
                 echo "images pushed to dev repo."
