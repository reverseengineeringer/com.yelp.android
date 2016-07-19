package com.adjust.sdk;

public abstract interface ISdkClickHandler
{
  public abstract void init(boolean paramBoolean);
  
  public abstract void pauseSending();
  
  public abstract void resumeSending();
  
  public abstract void sendSdkClick(ActivityPackage paramActivityPackage);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ISdkClickHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */