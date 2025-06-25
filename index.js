const express = require('express');
const app = express();

app.get("/rhs", (req, res) => {
    res.send('<h1>HELLO FROM NODE</h1>');
});

const PORT = 3000;
app.listen(PORT, "0.0.0.0" ,() => {
    console.log(`Server running on port ${PORT}`);
});
