# Use Alpine Linux as the base image
FROM alpine:latest

# Install our tools
#
# Make sure docs is installed last.
#
# https://wiki.alpinelinux.org/wiki/Alpine_Linux:FAQ#Why_don't_I_have_man_pages_or_where_is_the_'man'_command?
#
RUN apk update \
    && apk add gawk \
    && apk add bash \
    && apk add nano \
    && apk add less \
    && apk add coreutils \
    && apk add docs 

# Show pretty colours in the terminal
ENV TERM=xterm-256color

# Add a user named 'techwriter'
RUN adduser -D techwriter

# Switch to 'techwriter' user
USER techwriter

# Set the working directory to the home directory of the new user
WORKDIR /home/techwriter

# Add our custom files
ADD --chown=techwriter:techwriter ./dotbashrc /home/techwriter/.bashrc
ADD --chown=techwriter:techwriter ./dotbash_profile /home/techwriter/.bash_profile
ADD --chown=techwriter:techwriter ./welcome.txt /home/techwriter/welcome.txt

ENTRYPOINT ["/bin/bash", "--login"]
