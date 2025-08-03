FROM node:18

WORKDIR /botpress

COPY . .

RUN npm install -g pnpm && pnpm install

RUN pnpm build

EXPOSE 3000

CMD ["pnpm", "start"]
