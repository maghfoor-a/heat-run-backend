import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import filePath from "./filePath";
import { Client } from "pg";

const app = express();

app.use(express.json());
app.use(cors());

dotenv.config();

const PORT_NUMBER = process.env.PORT ?? 4000;

//connecting to the elephantSQL database using URL
const client = new Client(process.env.DATABASE_URL);
client.connect();

//landing on the front page of the REST API
app.get("/", (req, res) => {
  const pathToFile = filePath("../public/index.html");
  res.sendFile(pathToFile);
});

app.get("/runs", async (req, res) => {
  try {
    const queryResponse = await client.query("SELECT * FROM runs");
    res.status(200).json(queryResponse.rows);
  } catch (error) {
    res.status(404).json("Error making a query to database");
  }
});

//starting the server
app.listen(PORT_NUMBER, () => {
  console.log(`Server is listneing on port ${PORT_NUMBER}!`);
});
