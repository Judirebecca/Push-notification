const admin = require('firebase-admin');

const serviceAccount = {
  type: "service_account",
  project_id: "pushnotifpoc-3fa9c",
  private_key_id: "ec7946aef6408d3103091b962dc14f2930d60d13",
  private_key:
    "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDbHTLCPK0qPhDt\nZteSqHrYd63wHtCHGOhBcErq8bGIv9OaoDuLb+MDCnWLswdQOCONilgD/zX1nXPV\nz0KcXVkK92Fc2WDrngjk5HigcQl+e1YtGUTHdMk+06nZYty1xO0jsrYs41vCjVz9\niI1ov+nX3mJJkTdmFbQCGQV4sTEQtWNFVarZqriimVHZ0/kA9BVe2t2VKw9q8uMV\n4xP22o7HaY/v80uNYTdxqcHgQHcIr7J14+bYIpEb5pbGS1djBVMdcNv7N9iqvnSE\nZ1hhKP9gYwmNUjfBuVj6lrs5BnR4+J2iz6Nx7EQGYuoCDBZJ/KmYXTsil4h7scTg\nrtKA1asZAgMBAAECggEAHN5HcjzhSbf8rfKHQ2zMJpn6AjFlIu9+piR/0l1+mPhB\nDlW/Eptuqtdlbj7rnz+OO5c3CmvE9bPFb62LZqOL2DyIiN2g/doH7PRHCkhqSk5A\np9d07txtqUfk0F3Mm2wzHClvBBH+ZG8QidzEWME0M3s6studk2cXnNEkHecmgj9N\nQWCWzuXREcZ8zeAgXeeYP92F9EMPqVNt/5T246fK8sBYyXD92seQules6eGtkXIe\n8n5Ccrvka42yrxh/QYtPpe0v472iHxgzP4kvm16oJxVOiZMgL976KjSCJ+PbDTZJ\nNdlI4SFRcoz++yGzb4shwOi7gb5rccjpnRBDTVcpWwKBgQD0PGUxfSx52XJMIuTN\nzb5fimBTkjhOLzoKbReDTCFik7mfr2Njt63NV5c6tnzcQtpbRfylOptDKwBWojt1\nmVVVFtLXN/rsQUubDP5vTYoAkhAd3Y2Kr0DGrX6G0RpZNSoP5aKKsnaKK1/94GXA\nryiUv9yDMeym2sKMAXttGKfaowKBgQDlqwhGvKO40PaPOnjOA40M2XsukSvy9QmO\nBNcOBGeXe9QBN6jJaEkQp7D6EHEI9TD1JqWZ99PpX/laGrAP+p7OJrtB6jIIIGKb\nVLzityO7JBVaGePnKyI4GuEyL3EJjEH+Du6bDjrmrFETLLueub/0w8sys0/mO6E4\nTywITr3bEwKBgQCNzd8nK7k+Cg19vSjBgTqOOEaTXytH4c2+Lfbf6bzcgk7dMzTu\nub+0oK2Sjk/ShxJGukzlFjD9f6MTqeAB+IP+AmFqSftrXsHqBVJZB1kf2a532KIM\nqpJeiG8VEaVNtDt2vWpxQwrmUCbMvZP2mvxh2T/MAJmZixw3s8iY4B7dJwKBgQCx\nNQlawxy0co97rgseMkE4A+p24M5/VTA9I2Dn0OA5UvMeyVpzpQKTVkBIgj0lQ0K2\nNU6bgUxCCqp0KplkiuTTfbEIx/I4sPxEi9p+N/7a25mZ/tYJPQ/XKG5P8akPS+hz\nZgQXIaCy8YxQ9jgB3aLN8fCsOwzQQXxA3V3FPzRgfwKBgCmg46/6mGOfgHN2FrGF\nYV/4tuyjEIcTKJvLM4nDJYM39iB9202yuMwC53iuFEl36EgWys1k3e+trL9ifi0p\ndcw9XMvaP4o1VAOo3C6f7UJjMtPsRjkZ8/j7fz24wRkYLky/bIDbW4xdz2O304Zl\nlfvdgJCRqp8Algkmce3XVvDO\n-----END PRIVATE KEY-----\n",
  client_email:
    "firebase-adminsdk-vrimm@pushnotifpoc-3fa9c.iam.gserviceaccount.com",
  client_id: "112230678412201210734",
  auth_uri: "https://accounts.google.com/o/oauth2/auth",
  token_uri: "https://oauth2.googleapis.com/token",
  auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
  client_x509_cert_url:
    "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-vrimm%40pushnotifpoc-3fa9c.iam.gserviceaccount.com",
  universe_domain: "googleapis.com",
};
// Initialize Firebase Admin SDK
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const registrationToken =
  "eOMNDgApT6WzJ6878zLcE-:APA91bHIlLtVXN0sjiXtbUoNx8yNvQhKTniqzV65eBpR0TqA06CFIdfUM54gwQUSXX5mpthcYdH5cz7dfrH9y_TsVJCgc7HK0PeqNsIvZeImlYI7LvcoeDfpq5fzvq-uiAesR5kinDow";

const message = {
  data: {
    // Custom data you want to send with the notification
    key1: "value1",
    key2: "value2",
  },
  notification: {
    title: "wdewfvidhbvjndsvjfnm",
    body: "rfvehdinjvk nrfdhvkjf mdfvkj",
  },
  token: registrationToken,
};

// Send the notification
admin
  .messaging()
  .send(message)
  .then((response) => {
    console.log("Successfully sent notification:", response);
  })
  .catch((error) => {
    console.error("Error sending notification:", error);
  });
