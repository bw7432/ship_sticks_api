# README

- install and run mongoDB
```bash
rails db:create
```

```bash
rake load_products
```
```bash
rails s
```

# api endpoint to search a product

- show all products: `get localhost:3000/api/v1/products`

- search: `get localhost:3000/api/v1/products`

- pass in length, width, height, weight as query string parameters

- create a product: `post localhost:3000/api/v1/products`

- update a product: `put localhost:3000/api/v1/products/:id`

- show a product: `get localhost:3000/api/v1/products/:id`


