ARG TOFU_VERSION=1
FROM ghcr.io/opentofu/opentofu:${TOFU_VERSION}-minimal AS tofu

FROM alpine:3
RUN apk add --no-cache ca-certificates git openssh-client
COPY --from=tofu /usr/local/bin/tofu /usr/local/bin/tofu
WORKDIR /workspace
ENTRYPOINT ["tofu"]
