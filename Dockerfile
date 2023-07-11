FROM node

WORKDIR /app/
COPY package.json package-lock.json ./
RUN npm ci

COPY ./ ./
ENV JWT_SECRET=s3cr3t
ENV PORT=8080
CMD [ "npm", "start" ]
