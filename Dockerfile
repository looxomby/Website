FROM node:alpine

COPY . /website

RUN apt-get update

RUN apt-get install -y python3

RUN pip install django djangorestframework

RUN npm install -g npm@9.6.2 

WORKDIR /website/frontend

RUN npm i webpack webpack-cli --save-dev

RUN npm i @babel/core babel-loader @babel/preset-env @babel/preset-react --save-dev

RUN npm i react react-dom --save-dev

RUN npm install @material-ui/core

RUN npm install @babel/plugin-proposal-class-properties

RUN npm install react-router-dom

RUN npm install @material-ui/icons

RUN npm install -d tailwindcss@latest postcss@latest autoprefixer@latest

RUN npm install @craco/craco

RUN npx tailwindcss init

RUN nnpm run build-css

RUN npm install --global yarn

RUN npm run dev

CMD ["python", "..\manage.py", "runserver"]