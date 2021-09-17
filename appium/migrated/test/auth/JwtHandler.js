// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class JwtHandler {

//     Algorithm algo = Algorithm.HMAC256("secreeeet"); //TODO: SACAR HARDCODING
//     Algorithm rsaAlgorithm;

//     baseUrl;

//     requestId;

//     JwtHandler() {
//     }

//     static getBodyFromJwt(jwtToken) {
//          split_string = jwtToken.split("\\.");
//         base64EncodedHeader = split_string[0];
//         base64EncodedBody = split_string[1];
//         base64EncodedSignature = split_string[2];

//         Base64 base64Url = new Base64(true);
//         return new String(base64Url.decode(base64EncodedBody));
//     }

//     getLinkDeviceMagicLink(mail, pass) {
//         url = MailHandler.getLinkAccountMagicLink(mail, pass);
//         console.log("Vinculando dispositivo con cuenta: " + mail);
//         DriverActions.get(url);
//     }

//     getCompleteSignUpMagicLink(mail) {
//         baseUrl = process.env("magicLinkBaseUrl");
//         url = baseUrl
//                 + "/complete-signup?token="
//                 + getConfirmLinkAccountAccessToken(mail);
//         DriverActions.get(url);
//     }

//     getToken(mail) {
//         deviceId = process.env("deviceId");
//         console.log("Creating token with device id: " + deviceId);
//         token = JWT.create()
//                 .withClaim("email", mail)
//                 .withClaim("deviceId", deviceId)
//                 .withClaim("name", "SEBASTIAN")
//                 .sign(algo);
//         return token;
//     }

//     getTokenForRandomDevice(mail) {
//         deviceId = UUID.randomUUID().toString();
//         console.log("Creating token with device id: " + deviceId);
//         token = JWT.create()
//                 .withClaim("email", mail)
//                 .withClaim("deviceId", deviceId)
//                 .withClaim("name", "SEBASTIAN")
//                 .sign(algo);
//         return token;
//     }

//     getLinkFromAnotherDeviceMagicLink(mail) {
//         baseUrl = process.env("magicLinkBaseUrl");
//         url = baseUrl
//                 + "/link-account?token="
//                 + getTokenForRandomDevice(mail);
//         DriverActions.get(url);
//     }

//     getVerifyDeviceMagicLink(mail) {
//         baseUrl = process.env("magicLinkBaseUrl");
//         url = baseUrl
//                 + "/verify-email?token="
//                 + getToken(mail);
//         DriverActions.get(url);

//     }

//     getConfirmLinkAccountRefreshToken(mail) {
//         token = JWT.create()
//                 .withKeyId("Fp1q6TKhs9TsWY6hjLwLAZMK0Mb5v8mcuk6idC2vAnA")
//                 .withClaim("exp", System.currentTimeMillis() + 100000)
//                 .withClaim("nbf", 0)
//                 .withClaim("iat", System.currentTimeMillis())
//                 .withClaim("iss", "http://keycloak-dev-http.keycloak-dev.svc.cluster.local/auth/realms/bds-dev")
//                 .withClaim("aud", "http://keycloak-dev-http.keycloak-dev.svc.cluster.local/auth/realms/bds-dev")
//                 .withClaim("sub", UUID.randomUUID().toString())
//                 .withClaim("typ", "Refresh")
//                 .withClaim("azp", "clients-auth-signup")
//                 .withClaim("auth_time", 0)
//                 .withClaim("session_state", UUID.randomUUID().toString())
//                 .withClaim("given_name", "JUAN PABLO")
//                 .withClaim("userId", "0d685e97-6c53-4e65-999b-040cfdc95dc4")
//                 .withClaim("deviceId", process.env("deviceId"))
//                 .withClaim("family_name", "GARCIA DALOLLA")
//                 .sign(rsaAlgorithm);
//         return token;
//     }

//     getConfirmLinkAccountAccessToken(mail) {
//         baseUrl = process.env("magicLinkBaseUrl");
//         token = JWT.create()
//                 .withKeyId("Fp1q6TKhs9TsWY6hjLwLAZMK0Mb5v8mcuk6idC2vAnA")
//                 .withClaim("jti", UUID.randomUUID().toString())
//                 .withClaim("exp", System.currentTimeMillis() + 100000)
//                 .withClaim("nbf", 0)
//                 .withClaim("iat", System.currentTimeMillis())
//                 .withClaim("iss", "http://keycloak-dev-http.keycloak-dev.svc.cluster.local/auth/realms/bds-dev")
//                 .withClaim("sub", UUID.randomUUID().toString())
//                 .withClaim("typ", "Bearer")
//                 .withClaim("azp", "clients-auth-signup")
//                 .withClaim("auth_time", 0)
//                 .withClaim("session_state", "0dc21e55-0244-4f14-85cc-218bd70fd1cb")
//                 .withClaim("coreClientId", "1102")
//                 .withClaim("name", "JUAN PABLO GARCIA DALOLLA")
//                 .withClaim("preferred_username", mail)
//                 .withClaim("given_name", "JUAN PABLO")
//                 .withClaim("idNumber", "25385206    ")
//                 .withClaim("userId", "0dc21e55-0244-4f14-85cc-218bd70fd1cb")
//                 .withClaim("family_name", "GARCIA DALOLLA")
//                 .withClaim("deviceId", process.env("deviceId"))
//                 .withClaim("email", mail)
//                 .sign(rsaAlgorithm);
//         return token;
//     }
// }
