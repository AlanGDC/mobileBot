// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class AccessTokenJWT {

//     jti;
//    exp;
//    nbf;
//    iat;
//     iss;
//     sub;
//     typ;
//     azp;
//    auth_time;
//     session_state;
//     coreClientId;
//     name;
//     preferred_username;
//     given_name;
//     idNumber;
//     userId;
//     family_name;
//     deviceId;
//     email;

//     @JsonCreator
//     AccessTokenJWT(@JsonProperty("jti") jti,
//                           @JsonProperty("exp")exp,
//                           @JsonProperty("nbf")nbf,
//                           @JsonProperty("iat")iat,
//                           @JsonProperty("iss") iss,
//                           @JsonProperty("sub") sub,
//                           @JsonProperty("typ") typ,
//                           @JsonProperty("azp") azp,
//                           @JsonProperty("auth_time")auth_time,
//                           @JsonProperty("session_state") session_state,
//                           @JsonProperty("coreClientId") coreClientId,
//                           @JsonProperty("name") name,
//                           @JsonProperty("preferred_username") preferred_username,
//                           @JsonProperty("given_name") given_name,
//                           @JsonProperty("idNumber") idNumber,
//                           @JsonProperty("userId") userId,
//                           @JsonProperty("family_name") family_name,
//                           @JsonProperty("deviceId") deviceId,
//                           @JsonProperty("email") email) {
//         this.jti = jti;
//         this.exp = exp;
//         this.nbf = nbf;
//         this.iat = iat;
//         this.iss = iss;
//         this.sub = sub;
//         this.typ = typ;
//         this.azp = azp;
//         this.auth_time = auth_time;
//         this.session_state = session_state;
//         this.coreClientId = coreClientId;
//         this.name = name;
//         this.preferred_username = preferred_username;
//         this.given_name = given_name;
//         this.idNumber = idNumber;
//         this.userId = userId;
//         this.family_name = family_name;
//         this.deviceId = deviceId;
//         this.email = email;
//     }

//     getJti() {
//         return jti;
//     }

//     setJti(jti) {
//         this.jti = jti;
//     }

//    getExp() {
//         return exp;
//     }

//     setExp(Integer exp) {
//         this.exp = exp;
//     }

//    getNbf() {
//         return nbf;
//     }

//     setNbf(Integer nbf) {
//         this.nbf = nbf;
//     }

//    getIat() {
//         return iat;
//     }

//     setIat(Integer iat) {
//         this.iat = iat;
//     }

//     getIss() {
//         return iss;
//     }

//     setIss(iss) {
//         this.iss = iss;
//     }

//     getSub() {
//         return sub;
//     }

//     setSub(sub) {
//         this.sub = sub;
//     }

//     getTyp() {
//         return typ;
//     }

//     setTyp(typ) {
//         this.typ = typ;
//     }

//     getAzp() {
//         return azp;
//     }

//     setAzp(azp) {
//         this.azp = azp;
//     }

//    getAuth_time() {
//         return auth_time;
//     }

//     setAuth_time(Integer auth_time) {
//         this.auth_time = auth_time;
//     }

//     getSession_state() {
//         return session_state;
//     }

//     setSession_state(session_state) {
//         this.session_state = session_state;
//     }

//     getCoreClientId() {
//         return coreClientId;
//     }

//     setCoreClientId(coreClientId) {
//         this.coreClientId = coreClientId;
//     }

//     getName() {
//         return name;
//     }

//     setName(name) {
//         this.name = name;
//     }

//     getPreferred_username() {
//         return preferred_username;
//     }

//     setPreferred_username(preferred_username) {
//         this.preferred_username = preferred_username;
//     }

//     getGiven_name() {
//         return given_name;
//     }

//     setGiven_name(given_name) {
//         this.given_name = given_name;
//     }

//     getIdNumber() {
//         return idNumber;
//     }

//     setIdNumber(idNumber) {
//         this.idNumber = idNumber;
//     }

//     getUserId() {
//         return userId;
//     }

//     setUserId(userId) {
//         this.userId = userId;
//     }

//     getFamily_name() {
//         return family_name;
//     }

//     setFamily_name(family_name) {
//         this.family_name = family_name;
//     }

//     getDeviceId() {
//         return deviceId;
//     }

//     setDeviceId(deviceId) {
//         this.deviceId = deviceId;
//     }

//     getEmail() {
//         return email;
//     }

//     setEmail(email) {
//         this.email = email;
//     }
// }
