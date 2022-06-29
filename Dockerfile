# Base Image - ubuntu latest
FROM node

# Copy Workdir contents
ADD check-list /check-list/
WORKDIR /check-list/

# Create a Build
RUN npm install
RUN npm run client-install

# Runtime App
CMD npm run dev