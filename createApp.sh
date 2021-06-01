npm init -y
git config --global init.defaultBranch main
git init
git commit -m "first commit"
git branch -M main
npm install --save express dotenv
npm install --save-dev @babel/core @babel/node @babel/preset-env nodemon
mkdir src
touch src/index.js
echo "HELLO=Hello World" > .env
echo "#node.js
node_modules
.env
_discard\n" > .gitignore
echo "import express from 'express';
const app = express();
const port = 3000;
import 'dotenv/config';
console.log(process.env.HELLO);\n
app.get('/', (req, res) => {
\tres.send('<h2>Hello World - Node/Babel</h2>');
});\n
app.listen(port, () => console.log(\`listening on http://localhost:\${port}\`));\n" > src/index.js
appname=$(basename "$PWD")
echo "# $appname\n
## Node and Express with Babel\n
### Add this script to package.json\n
\`\`\`bash
\"scripts\": {
\t\"dev\": \"nodemon --exec babel-node src/index.js\"
}\n\`\`\`\n
### Start Development Server\n
\`\`\`bash\nnpm run dev\n\`\`\`" > README.md

git add README.md

mkdir public
echo "<html lang=\"en\">
\t<head>
\t\t<meta charset=\"UTF-8\" />
\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
\t\t<title>HTML Vue SFC</title>
\t\t<link
\t\t\trel=\"stylesheet\"
\t\t\thref=\"https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css\"
\t\t/>
\t</head>
\t<body>
\t\t<section id=\"app\">
\t\t\t<h2>Vue 3 SFC Counter</h2>
\t\t\t<div>
\t\t\t\t<button v-on:click=\"count++\">{{count}}</button>
\t\t\t</div>
\t\t</section>
\t\t<script src=\"https://unpkg.com/vue@next\"></script>
\t\t<script>
\t\t\tVue.createApp({
\t\t\t\tdata() {
\t\t\t\t\treturn {
\t\t\t\t\t\tcount: 0,
\t\t\t\t\t};
\t\t\t\t},
\t\t\t}).mount('#app');
\t\t</script>
\t</body>
</html>" > public/index.html

mkdir _discard
mv *.sh ./_discard
