# Import Node to build the application.
FROM node:14-alpine AS development
ENV NODE_ENV development

# Set working directory according to assignment requirements.
WORKDIR /sobering_madison_site

# Copy all package files.
COPY package*.json ./

# Install dependencies for the app.
RUN npm install

COPY . ./

# Expose the port.
EXPOSE 7775

# Run the app.
CMD ["npm","start"]