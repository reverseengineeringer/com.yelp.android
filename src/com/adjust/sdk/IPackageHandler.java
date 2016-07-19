package com.adjust.sdk;

import android.content.Context;

public abstract interface IPackageHandler
{
  public abstract void addPackage(ActivityPackage paramActivityPackage);
  
  public abstract void closeFirstPackage(ResponseData paramResponseData, ActivityPackage paramActivityPackage);
  
  public abstract void init(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean);
  
  public abstract void pauseSending();
  
  public abstract void resumeSending();
  
  public abstract void sendFirstPackage();
  
  public abstract void sendNextPackage(ResponseData paramResponseData);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.IPackageHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */