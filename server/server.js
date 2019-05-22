const path = require("path")
const logger = require("morgan")
const bodyParser = require("body-parser")
const hbsMiddleware = require("express-handlebars")
const fs = require("fs")
const _ = require("lodash")
const express = require("express")

const app = express()

app.set("views", path.join(__dirname, "../views"))
app.engine(
  "hbs",
  hbsMiddleware({
    defaultLayout: "default",
    extname: ".hbs"
  })
)

app.set("view engine", "hbs")

app.use(logger("dev"))
app.use(express.json())

app.use(express.static(path.join(__dirname, "../public")))
app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

const { Pool } = require("pg")

const pool = new Pool({
  connectionString: "postgres://postgres:password@127.0.0.1:5432/lornch-ablademy"
})

app.listen(3000, "0.0.0.0", () => {
  console.log("Server is listening...")
})

app.get("/students", (req, res) => {
  pool.connect().then(client => {
    client.query("SELECT * FROM students").then(result => {

      const songs = result.rows

      client.release()

      res.render("students", {students: students})
    })
  })
})

app.get("/students/new", (req, res) => {
  res.render('students/new', {student: {}})
})

app.post("/students", (req, res) => {
  const student = req.body.student

  pool
    .query("INSERT INTO students(name, year, demerit_count) VALUES ($1, $2, $3)", [
      student.name,
      student.year,
      student.demerit_count,
    ])
    .then(result => {
      res.redirect('/students')
    })
    .catch(err => {
      console.log(err)
      res.sendStatus(500)
    })
})

module.exports = app
