FROM python:3.12-alpine

WORKDIR /app

COPY index.html .

RUN adduser -D appuser && chown -R appuser /app

USER appuser

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget --spider -q http://localhost:8000/ || exit 1

CMD ["python", "-m", "http.server", "8000"]
