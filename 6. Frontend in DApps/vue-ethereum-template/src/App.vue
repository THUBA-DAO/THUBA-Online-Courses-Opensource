<template>
  <div class="common-layout fill-height">
    <el-container>
      <el-main>
        <el-card class="box-card" shadow="always">
          <template #header>
            <div class="card-header">
              <h1>THUBA Notes App</h1>
              <el-button 
                v-if="!connected"
                v-on:click="connectWallet(); get();"
                round>
                Connect Wallet
              </el-button>
              <p v-else> 
                <el-button 
                  round
                  disabled>
                  Connected To Wallet Successfully!
                </el-button>
              </p>
            </div>
          </template>
          <div id="form">
            <h2> Create New Note </h2>
            <h3> Title </h3>
            <el-input v-model="note.title" placeholder="Please input your title" clearable />
            <h3> Contents </h3>
            <el-input
              v-model="note.content"
              autosize
              type="textarea"
              placeholder="Please input your contents"
            />
            <br/>
            <br/>
            <el-button 
              v-if="!new_note_submitted"
              v-on:click="add()"
              round>
              Submit
            </el-button>
            <p v-else> 
              <el-button 
                round
                disabled>
                Submitted
              </el-button>
            </p>
            <br/>
            <br/>
            <el-button 
              v-on:click="get()"
              round>
              Refresh
            </el-button>
            <br/>
            <br/>
            <el-button 
              v-on:click="clear()"
              round>
              Clear
            </el-button>
          </div>
        </el-card>
      </el-main>
    </el-container>
    <el-container>  
      <el-main>
        <el-card class="box-card" shadow="always">
          <template #header>
            <div class="card-header">
              <h1>THUBA Saved Notes</h1>
            </div>
          </template>

          <div v-for="note in notes">
            <h2> {{ note.title }} </h2>
            <p> {{ note.content }} </p>
            <el-button 
              v-if="!delete_note_submitted"
              v-on:click="remove(note.id)"
              round>
              Remove This Note
            </el-button>
            <p v-else> 
              <el-button 
                round
                disabled>
                Removed
              </el-button>
            </p>
          </div>
        </el-card>
      </el-main>
    </el-container>
    <el-container>
      <el-footer>
        Build With 
        <img
          class="emoji"
          alt="heart"
          height="15"
          width="15"
          src="https://github.githubassets.com/images/icons/emoji/unicode/2764.png"
        />
        By THUBA Jerry Chong and Toh Li Heng
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import { ethers } from "ethers"
import abi from "../contract/abi.json"

export default {
  data() {
    return {
      contract: null,
      connected: false,
      new_note_submitted: false,
      delete_note_submitted: false,
      currentAccount: null,
      notes: [],
      note: {
        title: "",
        content: "",
      }
    }
  },
  mounted() {
    // connecting to a contract
    
  },
  methods: {
    // connecting to a wallet
    async connectWallet () {
      
    },
    // calling addNotes function
    async add() {
      
    },
    // calling getNotes function
    async get() {
      
    },
    // calling removeNote function
    async remove(id) {
      
    },
    // calling clearNotes function
    async clear() {
      
    },
  },
}
</script>

<style>
div,
h1,
h2,
h3 {
  text-align: center;
}

div {
  margin: auto;
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.text {
  font-size: 14px;
}

.item {
  margin-bottom: 18px;
}

.box-card {
  width: 480px;
  border-radius: 5%
}

.description{
  font-family: Arial;
  font-size: 20px;
}
</style>
