# Usa l'immagine ufficiale di Directus
FROM directus/directus:latest

# Imposta la porta su cui Directus ascolta
EXPOSE 8055

# Comando di default per avviare Directus
CMD ["directus", "start"]
