# Bootstrap Node/Express App

This shell script `createApp.sh` will create a node.js express app

## Run

```bash
sh createApp.sh
```

**Contains:**

- Babel
- Nodemon
- public/index.html with Vue 3 CDN and Water CSS

## To automate with BASH/ZSH

> ZSH

**Update .zshrc**

```bash
**sudo nano ~/.zshrc**
```

```bash
function nodeinit() {
	mkdir temp
	curl https://raw.githubusercontent.com/716green/createExpressApp/main/c$
	sh temp/init.sh
	echo Disregard Warning
	mv temp/init.sh ./_discard
	rm -r temp -y
	code .
}
```

**Refresh .zshrc**

```bash
**source ~/.zshrc**
```

**To Run Locally**

```bash
nodeinit
```
