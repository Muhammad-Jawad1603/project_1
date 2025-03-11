const express = require('express');
const app = express();

app.get("/api", (req, res) => {
    res.send('<h1>Node pplication</h1><br>Hello, World_testing786');
  });

app.get('/', (req, res) => {
    res.send('<h1>Node application</h1><br>Hello, World_testing0786!');
});

const PORT = 3000;
app.listen(PORT, "0.0.0.0" ,() => {
    console.log(`Server running on port ${PORT}`);
});
