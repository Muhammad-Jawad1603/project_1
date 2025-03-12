const express = require('express');
const app = express();

app.get("/api", (req, res) => {
    res.send('<h1>Node application</h1><br><p>THIS IS THE NEW PIPELINE</P>');
  });

app.get('/', (req, res) => {
    res.send('<h1>Node application</h1><br><p>THIS IS THE NEW PIPELINE</P>');
});

const PORT = 3000;
app.listen(PORT, "0.0.0.0" ,() => {
    console.log(`Server running on port ${PORT}`);
});