## Description
When using remote NodeJS interpreter from Docker container, `npm install` fails for this container with the following error:
```
node /usr/local/lib/node_modules/npm/bin/npm-cli.js install --scripts-prepend-node-path=auto
npm WARN saveError ENOENT: no such file or directory, open '/tmp/5e32cd4b-95d9-4457-a75d-82db58d93853/package.json'
npm WARN saveError EACCES: permission denied, open '/tmp/5e32cd4b-95d9-4457-a75d-82db58d93853/package-lock.json.3726888246'
npm WARN enoent ENOENT: no such file or directory, open '/tmp/5e32cd4b-95d9-4457-a75d-82db58d93853/package.json'
npm WARN 5e32cd4b-95d9-4457-a75d-82db58d93853 No description
npm WARN 5e32cd4b-95d9-4457-a75d-82db58d93853 No repository field.
npm WARN 5e32cd4b-95d9-4457-a75d-82db58d93853 No README data
npm WARN 5e32cd4b-95d9-4457-a75d-82db58d93853 No license field.

up to date in 0.404s
found 0 vulnerabilities


Process finished with exit code 0
```

No packages are installed.

### Steps to reproduce

#### 1. Run the container
```
cd <repo_root>
docker compose up -d
```
#### 2. Setup NodeJS remote interpreter in WebStorm

#### 3. Open package.json, right click and choose "Run npm install" option
