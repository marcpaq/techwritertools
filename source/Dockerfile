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
ENV TERM=xterm-color
RUN ln /etc/profile.d/color_prompt.sh.disabled /etc/profile.d/color_prompt.sh
# 
# Add a user named 'techwriter'
RUN adduser -D techwriter

# Switch to 'techwriter' user
USER techwriter

# Set the working directory to the home directory of the new user
WORKDIR /home/techwriter

# Set bash as the default shell
CMD ["bash"]
