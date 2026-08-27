FROM scratch

ARG IMAGE_VERSION

LABEL org.opencontainers.image.source="https://github.com/openads-project/openads-assets" \
      org.opencontainers.image.description="Shared data assets for OpenADS" \
      org.opencontainers.image.version="${IMAGE_VERSION}"

COPY . /
