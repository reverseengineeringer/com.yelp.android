package com.adjust.sdk;

public abstract interface IAttributionHandler
{
  public abstract void checkSessionResponse(SessionResponseData paramSessionResponseData);
  
  public abstract void getAttribution();
  
  public abstract void init(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void pauseSending();
  
  public abstract void resumeSending();
}

/* Location:
 * Qualified Name:     com.adjust.sdk.IAttributionHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */