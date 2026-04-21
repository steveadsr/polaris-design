FROM python:3.12-alpine

WORKDIR /app
COPY index.html .
COPY *.png . 2>/dev/null || true

EXPOSE 8080

CMD ["sh", "-c", "python3 -m http.server ${PORT:-8080}"]
