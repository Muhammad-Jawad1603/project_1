const express = require('express');
const app = express();

app.get("/rhs", (req, res) => {
    res.send('<h1>Node application on EC2</h1><h1>FROM THE EC2 PIPELINE</h1><br><p>THIS IS THE NEW PIPELINE7860</P>');
});

app.get('/', (req, res) => {
    res.send('<h1>Node application on EC2</h1><br><p>THIS IS THE NEW PIPELINE1603</P>');
});

const PORT = 3000;
app.listen(PORT, "0.0.0.0" ,() => {
    console.log(`Server running on port ${PORT}`);
});