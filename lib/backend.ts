// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAlXIs2ZYhPKLblSjvN0eYr6VjC-z0a1XA",
  authDomain: "planpeak-4d620.firebaseapp.com",
  projectId: "planpeak-4d620",
  storageBucket: "planpeak-4d620.appspot.com",
  messagingSenderId: "1091851566788",
  appId: "1:1091851566788:web:ff832e27a4cc3f07fd5391",
  measurementId: "G-CJJMVVGBX7"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);