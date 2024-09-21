
FROM node:16


WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (or whatever port your app uses)
EXPOSE 3000

# Command to run your app with trace warnings
CMD ["node", "--trace-warnings", "app.js"]
