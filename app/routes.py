from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession
from app.database import get_db
from app import crud

router = APIRouter()

@router.post('/users')
async def create_user():
    pass

@router.post('/books')
async def create_book():
    pass

@router.post('/reviews')
async def create_review():
    pass

@router.get('/books/{book_id}/reviews')
async def get_reviews_for_book(book_id: int):
    pass

@router.get('/users/{user_id}/reviews')
async def get_reviews_by_user(user_id: int):
    pass
