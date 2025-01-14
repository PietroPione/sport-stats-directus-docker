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

# Esegui il bootstrap (assicurati di avere le variabili di ambiente giuste per il DB)
RUN npx directus bootstrap --db-client=postgres --db-host=dpg-cu0kcipopnds73cgaoc0-a --db-port=5432 --db-database=sports_stats_database --db-user=sports_stats_database_user --db-password=aq4aayxa8UWK4AtJut3BfBxvzli0KCZO

# Espone la porta per Render
EXPOSE 8055

# Comando di avvio
CMD ["npx", "directus", "start"]
