# A small image that contains a shell
FROM gcr.io/distroless/static-debian11:debug-nonroot

# Download the cfssl tools
ADD https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssl_1.6.3_linux_amd64 /usr/local/bin/cfssl
ADD https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssljson_1.6.3_linux_amd64 /usr/local/bin/cfssljson

# Make the tools executable
RUN ["chmod", "755", "/usr/local/bin/cfssl"]
RUN ["chmod", "755", "/usr/local/bin/cfssljson"]
