package com.yelp.android.appdata.webrequests;

public abstract interface m<Result>
{
  public abstract void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException);
  
  public abstract void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult);
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */