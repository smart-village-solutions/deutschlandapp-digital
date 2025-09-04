# ---- Build stage ----
FROM node:20-alpine AS build
WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci

COPY . .
# Vite/Vue build
RUN npm run build

# ---- Runtime stage ----
FROM nginx:1.27-alpine
# SPA-Fallback + Caching
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Ausgelieferte Assets
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ || exit 1
CMD ["nginx","-g","daemon off;"]
