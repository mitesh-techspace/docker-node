FROM node:11.11.0

LABEL "maintainer"="mitesh@tech.com"
LABEL "rating"="Five Stars" "class"="First Class"

USER root

ENV AP /data/app

# Application Code
ADD *.js* $AP/

WORKDIR $AP

RUN npm install

CMD node index.js

