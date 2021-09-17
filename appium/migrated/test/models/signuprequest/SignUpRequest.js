// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class SignUpRequest {

//     state;
//     deviceId;
//     appBundleId;
//     SignUpRequestContactInfo contactInfo;
//     faceUrl;
//     gestureUrl;
//     idFrontUrl;
//     idBackUrl;
//     SignUpRequestAddress address;
//     SignUpRequestTermsAccepted termsAccepted;
//     faceIdData;
//     SignUpRequestObligatedSubject obligatedSubject;
//     SignUpRequestPep pep;
//     Boolean fatca;
//     email;
//     keycloakId;
//     coreClientId;

//     @JsonCreator
//     SignUpRequest(@JsonProperty state,
//                          @JsonProperty deviceId,
//                          @JsonProperty appBundleId,
//                          @JsonProperty SignUpRequestContactInfo contactInfo,
//                          @JsonProperty faceUrl,
//                          @JsonProperty gestureUrl,
//                          @JsonProperty idFrontUrl,
//                          @JsonProperty idBackUrl,
//                          @JsonProperty SignUpRequestAddress address,
//                          @JsonProperty SignUpRequestTermsAccepted termsAccepted,
//                          @JsonProperty faceIdData,
//                          @JsonProperty SignUpRequestObligatedSubject obligatedSubject,
//                          @JsonProperty SignUpRequestPep pep,
//                          @JsonProperty Boolean fatca,
//                          @JsonProperty email,
//                          @JsonProperty keycloakId,
//                          @JsonProperty coreClientId) {
//         this.state = state;
//         this.deviceId = deviceId;
//         this.appBundleId = appBundleId;
//         this.contactInfo = contactInfo;
//         this.faceUrl = faceUrl;
//         this.gestureUrl = gestureUrl;
//         this.idFrontUrl = idFrontUrl;
//         this.idBackUrl = idBackUrl;
//         this.address = address;
//         this.termsAccepted = termsAccepted;
//         this.faceIdData = faceIdData;
//         this.obligatedSubject = obligatedSubject;
//         this.pep = pep;
//         this.fatca = fatca;
//         this.email = email;
//         this.keycloakId = keycloakId;
//         this.coreClientId = coreClientId;
//     }

//     SignUpRequest() {
//     }

//     getState() {
//         return state;
//     }

//     setState(state) {
//         this.state = state;
//     }

//     getDeviceId() {
//         return deviceId;
//     }

//     setDeviceId(deviceId) {
//         this.deviceId = deviceId;
//     }

//     getAppBundleId() {
//         return appBundleId;
//     }

//     setAppBundleId(appBundleId) {
//         this.appBundleId = appBundleId;
//     }

//     SignUpRequestContactInfo getContactInfo() {
//         return contactInfo;
//     }

//     setContactInfo(SignUpRequestContactInfo contactInfo) {
//         this.contactInfo = contactInfo;
//     }

//     getFaceUrl() {
//         return faceUrl;
//     }

//     setFaceUrl(faceUrl) {
//         this.faceUrl = faceUrl;
//     }

//     getGestureUrl() {
//         return gestureUrl;
//     }

//     setGestureUrl(gestureUrl) {
//         this.gestureUrl = gestureUrl;
//     }

//     getIdFrontUrl() {
//         return idFrontUrl;
//     }

//     setIdFrontUrl(idFrontUrl) {
//         this.idFrontUrl = idFrontUrl;
//     }

//     getIdBackUrl() {
//         return idBackUrl;
//     }

//     setIdBackUrl(idBackUrl) {
//         this.idBackUrl = idBackUrl;
//     }

//     SignUpRequestAddress getAddress() {
//         return address;
//     }

//     setAddress(SignUpRequestAddress address) {
//         this.address = address;
//     }

//     SignUpRequestTermsAccepted getTermsAccepted() {
//         return termsAccepted;
//     }

//     setTermsAccepted(SignUpRequestTermsAccepted termsAccepted) {
//         this.termsAccepted = termsAccepted;
//     }

//     getFaceIdData() {
//         return faceIdData;
//     }

//     setFaceIdData(faceIdData) {
//         this.faceIdData = faceIdData;
//     }

//     SignUpRequestObligatedSubject getObligatedSubject() {
//         return obligatedSubject;
//     }

//     setObligatedSubject(SignUpRequestObligatedSubject obligatedSubject) {
//         this.obligatedSubject = obligatedSubject;
//     }

//     SignUpRequestPep getPep() {
//         return pep;
//     }

//     setPep(SignUpRequestPep pep) {
//         this.pep = pep;
//     }

//     Boolean getFatca() {
//         return fatca;
//     }

//     setFatca(Boolean fatca) {
//         this.fatca = fatca;
//     }

//     getEmail() {
//         return email;
//     }

//     setEmail(email) {
//         this.email = email;
//     }

//     getKeycloakId() {
//         return keycloakId;
//     }

//     setKeycloakId(keycloakId) {
//         this.keycloakId = keycloakId;
//     }

//     getCoreClientId() {
//         return coreClientId;
//     }

//     setCoreClientId(coreClientId) {
//         this.coreClientId = coreClientId;
//     }
// }
