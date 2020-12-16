FROM node:15-alpine

# - pm2
# pm2 v4 --web has bug
#RUN npm install pm2@latest -g

# - SRC FILES
COPY . /app
WORKDIR /app

# - NODE MODULES
RUN yarn


# start
# CMD pm2-runtime ./bin/www -i 2 -node-args "--max_old_space_size=4096"
CMD node ./server.js