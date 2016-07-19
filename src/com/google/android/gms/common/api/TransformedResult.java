package com.google.android.gms.common.api;

public abstract class TransformedResult<R extends Result>
{
  public abstract void andFinally(ResultCallbacks<? super R> paramResultCallbacks);
  
  public abstract <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> paramResultTransform);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.TransformedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */