FROM emscripten/emsdk:3.1.74 AS builder
WORKDIR /app
RUN npm install -g pnpm
COPY web/package.json web/pnpm-lock.yaml* ./web/
COPY . .
RUN sed -i 's|$(EMSDK_ENV) --build=Release && emcc|emcc|g' Makefile
RUN mkdir -p /app/firmware/stock
RUN make all

FROM nginx:1.28.0-alpine
COPY --from=builder /app/web/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
