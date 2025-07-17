FROM publish_image AS final_image
WORKDIR /usr/src/app
COPY . .
RUN npm install --only-prod
EXPOSE 3000
ENV NODE_ENV=production
CMD ["npm", "start"]