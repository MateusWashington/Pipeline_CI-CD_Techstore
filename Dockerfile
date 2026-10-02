FROM python:3.12-slim

WORKDIR /app

COPY index.html .

RUN useradd -m appuser && chown -R appuser /app

USER appuser

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:8000/')"

CMD ["python", "-m", "http.server", "8000"]
