# EU VAT Number validator API service through VIES public service

## Usage

- Download the source
- Start the container service with `docker compose up`
- Try to open http://localhost:8080/validate/{vatNumber}
  - For example: http://localhost:8080/validate/HU14918618
    The EU tax number must start with the 2-character country code, followed by the national tax number.

More information about the VAT numbers - https://en.wikipedia.org/wiki/VAT_identification_number

Used VIES VOW service - https://ec.europa.eu/taxation_customs/vies/
