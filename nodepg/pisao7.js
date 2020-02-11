require('dotenv').config()
const { Pool} = require('pg')

const pool = new Pool({
    user: `${process.env.DB_USER}`,
    host: `${process.env.DB_HOST}`,
    database: `${process.env.DB_DATABASE}`,
    password: `${process.env.DB_PASSWORD}`,
    port: process.env.DB_PORT,
    ssl: true
})


pool.query(`SELECT pet_name, family, laimee.pets.owner_id
FROM laimee.pets
LEFT JOIN laimee.owners
ON laimee.pets.owner_id = laimee.owners.owner_id
WHERE laimee.pets.owner_id IS NULL`, (error, results) => {
    if(error){
        throw error
    }
    console.log(results.rows)
})