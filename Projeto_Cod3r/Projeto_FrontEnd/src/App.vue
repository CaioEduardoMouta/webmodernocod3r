<template>
	<div id="app" :class="{'hide-menu': !isMenuVisible, 'auth': !hasValidUser}">
		<Header title="Cod3r - Base de Conhecimento"
			:hideToggle="!user"
			:hideUserDropdown="!user" />
		<Menu v-if="user" />
		<Loading v-if="validateToken" />
		<Content v-else></Content>
		<Footer v-if="hasValidUser" />
	</div>
</template>

<script>
import { mapState } from "vuex"
import { baseApiUrl, userKey } from "@/global"
import axios from "axios"
import Header from "./components/template/Header"
import Menu from "./components/template/Menu"
import Content from "./components/template/Content"
import Footer from "./components/template/Footer"
import Loading from "@/components/template/Loading"

export default {
	name: "App",
	computed: {
		...mapState(["isMenuVisible", "user"]),
		hasValidUser() {
			return !this.validatingToken && this.user
		}
	},
	components: { Header, Menu, Content, Footer, Loading },
	data: function() {
		return {
			validatingToken: true
		}
	},
	methods: {
    	async validateToken() {
			this.validatingToken = true

			const userData = JSON.parse(json)
			this.$store.commit('setUser', null)
			
			if(!userData) {
				this.validatingToken = false
				this.$router.push({ name: 'auth'})
				return
			}
			
				const res = await axios.post(`${baseApiUrl}/validateToken`, userData)

				if (res.data) {
					this.$store.commit("setUser", userData)
					
					if(this.$mq === 'xs' || this.$mq === 'sm') {
                	this.$store.commit('toggleMenu', false)
            }
				} else {
					localStorage.removeItem(userKey)
					this.$router.push({ name: 'auth'})
				}
			

			this.validatingToken = false
		}
	},
	created() {
		
		this.validateToken()
	}
}
</script>

<style>
* {
  font-family: "Lato", sans-serif;
}

body {
  margin: 0;
}

#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

  height: 100vh;
  display: grid;
  grid-template-rows: 60px 1fr 40px;
  grid-template-columns: 300px 1fr;
  grid-template-areas:
    "header header"
    "menu content"
    "menu footer";
}

#app.hide-menu {
  grid-template-areas:
    "header header"
    "content content"
    "footer footer";
}

#app.auth {
  grid-template-areas:
    "header header"
    "content content"
    "content content";
}

.loading {
  grid-area: content;
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
