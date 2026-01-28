const fs = require("fs");
const path = require("path");
const assert = require("assert");

const rootDir = path.resolve(__dirname, "..");
const filesToCheck = [
  "index.html",
  "project1.html",
  "project2.html",
  "project3.html",
  "script.js",
  "style.css",
];

filesToCheck.forEach((file) => {
  const filePath = path.join(rootDir, file);
  assert.ok(fs.existsSync(filePath), `Missing file: ${file}`);

  const contents = fs.readFileSync(filePath, "utf8").trim();
  assert.ok(contents.length > 0, `File is empty: ${file}`);
});

console.log("Basic smoke tests passed.");
