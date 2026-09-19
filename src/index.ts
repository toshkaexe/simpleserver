import "dotenv/config";
import express, {Request, Response} from "express";
import morgan from "morgan";
import cookieParser from "cookie-parser";
import * as process from "node:process";

const app = express();
app.use(express.json());
const PORT = process.env.PORT || 5000

app.get('/', (req, res) => {
    res
        .status(200)
        .send("Hello World!");
});

app.get("/env", (req, res) => {
    res.send({
        login: process.env.AUTH_LOGIN,
        pass: process.env.AUTH_PASSWORD,
    });
});
//
// const PORT = process.env.PORT || 5001;
//
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
