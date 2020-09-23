<template>
  <div class="p-5 grid" style="height: 80vh">
    <vs-row justify="center" align="center" direction="column">
      <div class="text-4xl text-white">Sign Up</div>
      <vs-input v-model="username" placeholder="username" class="mt-4"></vs-input>
      <vs-input v-model="email" placeholder="email" class="mt-4"></vs-input>
      <vs-input type="password" v-model="password" placeholder="password" class="mt-4"></vs-input>
      <vs-input
        type="password"
        v-model="passwordVerification"
        placeholder="username verify"
        class="mt-4"
      ></vs-input>
      <vs-button
        border
        class="focus:outline-none focus:shadow-outline mt-4"
        @click="createUser()"
      >signup</vs-button>
    </vs-row>
  </div>
</template>

<script>
export default {
  data: () => ({
    username: "",
    email: "",
    password: "",
    passwordVerification: "",
  }),
  props: ["auth_token"],
  mounted() {
    console.log(this.auth_token);
  },
  methods: {
    openFieldErrorNotification(text) {
      const noti = this.$vs.notification({
        progress: "auto",
        color: "danger",
        position: "top-right",
        title: "Error",
        text,
      });
    },
    allFieldAreFine() {
      const areFieldFilled =
        this.password.length + this.email.length + this.username.length;

      if (areFieldFilled <= 0) {
        this.openFieldErrorNotification(
          "Por favor ingrese los campos correspodientes para la creación de su cuenta."
        );
        return false;
      }

      if (this.username.length <= 0) {
        this.openFieldErrorNotification(
          "Por favor rellene el campo del nombre de usuario de manera correcta"
        );
        return false;
      }

      if (this.email.length <= 0) {
        this.openFieldErrorNotification(
          "Por favor rellene el campo del correo de manera correcta"
        );
        return false;
      }

      if (this.passwordVerification !== this.password) {
        this.openFieldErrorNotification(
          "Verificación de contraseña incorrecta"
        );
        return false;
      }

      return true;
    },
    createUser() {
      if (this.allFieldAreFine()) {
        fetch("/user/create", {
          method: "POST",
          body: JSON.stringify({
            username: this.username,
            email: this.email,
            password: this.password,
            authenticity_token: this.auth_token,
          }),
          headers: { "Content-Type": "application/json" },
        })
          .then((res) => {
            console.log("hola mundo hp")
            return res.json();
          })
          .then((res) => {
            console.log(res);
          });
      }
    },
  },
};
</script>

<style>
</style>