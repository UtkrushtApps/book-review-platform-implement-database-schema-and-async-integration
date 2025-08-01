# Task Overview

Utkrusht's Book Review Platform is designed for users to submit and view reviews on books. The FastAPI application is scaffolded, with endpoints ready and environment setup automated. However, there is no implemented database schema or async data access logic connecting FastAPI to PostgreSQL. Your job is to create normalized PostgreSQL tables for books, users, and reviews, define SQLAlchemy models, and implement the async CRUD methods to power the provided API endpoints. This test measures your ability to craft reliable schemas, enforce integrity, and use async Python/Postgres integrations suitable for small-scale production.

## Guidance
- Edit `schema.sql` to create normalized tables for books, users, and reviews with meaningful constraints.
- Add SQLAlchemy models in `app/models.py` to match your schema.
- Write async CRUD DB logic in `app/crud.py` and link it to the `app/routes.py` endpoints.
- Use `run.sh` to spin up the environment in Docker Compose with FastAPI and PostgreSQL.

## Objectives
- Design and implement PostgreSQL DDL for users, books, and reviews with keys, types, and foreign keys.
- Implement SQLAlchemy models with proper relationships and constraints to represent the DB schema in FastAPI.
- Write asynchronous CRUD functions for: (a) creating a review, (b) fetching all reviews for a book, and (c) fetching all reviews by a user.
- Integrate these DB functions in the existing FastAPI endpoints in `app/routes.py` (endpoints are scaffolded; just wire up the DB logic).

## How to Verify
- Run `bash run.sh` to start the app; verify the API is live at `http://localhost:8000/docs`.
- Use the API to create new users, books, and reviews; confirm reviews are saved to the database and can be fetched via relevant endpoints.
- Check PostgreSQL via psql or a GUI tool (pgAdmin/DBeaver) to ensure data integrity and correctness of relationships.
- Verify that all DB interactions are async and non-blocking.
