# Dockerfile
#
# [ directiva ] [ comando ]


# FROM
#
#     NOTA:importante trabajar siempre con versiones especificas para la construccion de imagenes
#
# FROM ubuntu:latest            no es una buena practica
# FROM ubuntu:24.04             CHECK !!

FROM ubuntu:24.04

# NOTE: La estructura interna de la imagen dependerA
# de la base que se este empleando
#   
#   linux       root
#   windows     admin


# RUN
#
#   RUN [ comando ]

RUN mkdir -p /container/app
# RUN apt update
# RUN apt install -y nodejs



# CMD
#
# define el comando que será lanzado como 
# PRIMER comando una vez iniciado el contenedor

CMD [ "/bin/bash" ]
