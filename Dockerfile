# A small image that contains a shell
FROM gcr.io/distroless/static-debian11:debug-nonroot

# Download tools and chown to default user in nonroot image so we can chmod it
# in later steps
ADD --chown=nonroot:nonroot https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssl_1.6.3_linux_amd64 /usr/local/bin/cfssl
ADD --chown=nonroot:nonroot https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssljson_1.6.3_linux_amd64 /usr/local/bin/cfssljson

# Make the tools executable
RUN ["chmod", "755", "/usr/local/bin/cfssl"]
RUN ["chmod", "755", "/usr/local/bin/cfssljson"]
