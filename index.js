const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('<h1>Node application</h1><br>Hello, World_testing7860');
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});