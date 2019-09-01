#!/bin/bash

mkdir ui 
mkdir api 
mkdir db 
touch README.md

cd ui 
mkdir src 
mkdir public
cd src
mkdir components
mkdir style
touch components/App.ts

cd ../public
touch index.html
touch index.tsx

cd ../../ui 
npm init

npm install -D typescript
npm install -D tslint

tsc --init

./node_modules/.bin/tslint --init

echo "{
"\"defaultSeverity"\": "\"error"\",
  "\"extends"\": ["\"tslint:recommended"\"],
  "\"jsRules"\": {},
  "\"rules"\": {
    "\"no-console"\": false
  },
  "\"rulesDirectory"\": []
}
" > ./tslint.json

echo "{
  "\"compilerOptions"\": {
      "\"module"\": "\"commonjs"\",
      "\"esModuleInterop"\": true,
      "\"outDir"\": "\"./built"\",
      "\"allowJs"\": true,
      "\"moduleResolution"\": "\"node"\",
      "\"target"\": "\"es6"\"
  },
  "\"lib"\": ["\"es2015"\"],
  "\"include"\": [
      "\"./src/**/*"\"
  ]
}
" > ./tsconfig.json

touch .gitignore
echo "node_modules" > ./.gitignore

touch README.md