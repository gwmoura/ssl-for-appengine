# ssl-for-appengine
Simple basj script to generate .pem file and full chain certificate

This example is for letsencrypt SSL

#### How to use

After download certificate.crt, ca_bundle.crt and private.key files, access the folder and execute: 

```bash
curl -sL https://raw.githubusercontent.com/gwmoura/ssl-for-appengine/master/appenginessl.sh | sh
```

After you can access ` console.cloud.google.com` go to App Engine > Settings > SSl Certificates and upload `concat.crt` and `private.key.pem`
