# Usa un'immagine ufficiale di Node.js
FROM node:18

# Imposta la directory di lavoro
WORKDIR /directus

# Copia i file necessari (package.json e package-lock.json)
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il resto dei file del progetto
COPY . .

# Espone la porta per Render
EXPOSE 8055

# Comando di avvio
CMD ["npx", "directus", "start"]
