FROM node:18

# Indalar n8n
RUN npm install -g n8n

#Railway asigna un perto dinámico en la variable port
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

# Exponer el puerto interno de n8n
EXPOSE 5678

CMD ["n8n", "start"]
