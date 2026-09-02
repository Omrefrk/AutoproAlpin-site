# Alpin Auto × Auto Pro Detailing — statik site (Dokploy / Docker deploy)
# Basit bir nginx imajı, tüm HTML/CSS/JS/görsel dosyalarını olduğu gibi servis eder.

FROM nginx:alpine

# Varsayılan nginx örnek sayfalarını temizle
RUN rm -rf /usr/share/nginx/html/*

# Site dosyalarını nginx'in servis dizinine kopyala
COPY . /usr/share/nginx/html

# Özel nginx ayarları (doğru MIME tipleri, 404 sayfası, cache başlıkları)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
