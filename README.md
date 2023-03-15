# knubbis-cfssl-helper
This is a helper container for setting up self-signed certificates for [knubbis-fleetlock](https://github.com/SUNET/knubbis-fleetlock).

Basically the container contains the basic cfssl tools and a shell which can
then be utitlized by mounting a volume at runtime that contains a shell script
and input JSON files for automating cert generation.
