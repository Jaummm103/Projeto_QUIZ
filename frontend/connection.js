const express = require("express");
const app = express();
const port = 3000;

app.use(express.static("publica"));
app.use("/css", express.static(__dirname + "publica/css"));
app.use("/imagens", express.static(__dirname + "publica/imagens"));
app.use("/js", express.static(__dirname + "publica/js"));

app.get("/Inicio", (req, res) =>{
    res.sendFile(__dirname + "/html/index.html")
});
app.get("/Cadastro", (req, res) =>{
    res.sendFile(__dirname + "/html/cadastro.html")
});
app.get("/Perguntas", (req, res) =>{
    res.sendFile(__dirname + "/html/perguntas.html")
});

app.listen(port, () => console.info("Servidor rodando na porta 3000"));