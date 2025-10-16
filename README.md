# Personal Aquarium SQL Database Project

--- 

Over the last few months, I've been really into aquascaping. The art of combining aquatic elements for a natural beautiful aquarium.

I've made two aquascapes thus far :) 



The goal of this project is to:
- Practice MySQL database creation, table design, and normalization.
- Write, test, and optimize SQL queries.
- Apply data management concepts to a real-world scenario - my deep dive (no pun intended) into aquascaping.

---

## Database Overview

The `aquarium_db` database models my planted fish tank setup, outlining the materials I've used to create my scapes.
- **Tank**: Stores tank metadata such as size, description, and location
- **Lights**: Tracks lighting equipment, specifications, and setup
- **Substrate**: Details on the different substrates I've used
- **Plants**: Info on the different plants I've put into the tanks
- **Livestock**: Individual livestock records
- **Parameters**: Information on the readings of different key tank parameters (I use API master test kit to measure this)
- **Diet**: Info on what I feed my fishies/shrimpies/snailies

## Tech Stack
- MySQL 9.4 (Local Server)
- MySQL Workbench 8.0
- Git + GitHub for version control
- Notepad for editing this readme

## File Structure
 aquarium-sql-database
├── schema.sql         # Database structure (tables, keys, constraints)
├── seed.sql           # Inserts sample aquarium data
├── queries.sql        # Test queries, reports, sanity checks
└── README.md          # Project documentation

## Usage
1. Open MySQL Workbench and connect to your local server
2. Run scripts in the following order:
	1. schema.sql
	2. seed.sql
	3. queries.sql
3. Verify database integrity using the built-in sanity checks in schema, and queries

## Future Enhancements
- Eventually, I plan to purchase more tanks, livestock, plants, etc. - more will be added to the seed file
- Add relational joins between tank, livestock, and parameters
- Build views or stored procedures for trend tracking

## Author
**Cesar Medina**