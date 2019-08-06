// Create a Recaptcha verifier instance globally
// Calls submitPhoneNumberAuth() when the captcha is verified

window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
    "recaptcha-container",
    {
    size: "normal",
    callback: function(response) {
        submitPhoneNumberAuth();
    }
    }
);


// IF you want to hide the recaptcha, use 'invisible' the size
// window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
//   "sign-in-button",
//   {
//     size: "invisible",
//     callback: function(response) {
//       submitPhoneNumberAuth();
//      }
//   }
// );