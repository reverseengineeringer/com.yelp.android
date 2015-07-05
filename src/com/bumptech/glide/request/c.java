package com.bumptech.glide.request;

import com.yelp.android.ag.j;

public abstract interface c<T, R>
{
  public abstract boolean onException(Exception paramException, T paramT, j<R> paramj, boolean paramBoolean);
  
  public abstract boolean onResourceReady(R paramR, T paramT, j<R> paramj, boolean paramBoolean1, boolean paramBoolean2);
}

/* Location:
 * Qualified Name:     com.bumptech.glide.request.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */