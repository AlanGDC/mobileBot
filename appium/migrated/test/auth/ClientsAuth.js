import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class ClientsAuth {
  static baseUrl =
    "https://auth-" + process.env("testing.enviroment") + ".bdsdigital.com.ar";
  static linkAccountTokenPath = "/auth/v1/link-account-token";

  static getActionToken(mail) {
    console.log(
      "CREATING ACTION TOKEN WITH DEVICEID: " + process.env("deviceId")
    );
    return given()
      .log()
      .all()
      .contentType(ContentType.JSON)
      .body(
        "{\n" +
          '    "deviceId": "' +
          process.env("deviceId") +
          '",\n' +
          '    "email": "' +
          mail +
          '",\n' +
          '    "appBundleId": "ar.com.bdsol.bds.squads.' +
          process.env("testing.enviroment") +
          '"\n' +
          "}"
      )
      .post(baseUrl + linkAccountTokenPath)
      .getBody()
      .jsonPath()
      .get("actionToken")
      .toString();
  }
}
