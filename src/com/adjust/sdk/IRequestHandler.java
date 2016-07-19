package com.adjust.sdk;

public abstract interface IRequestHandler
{
  public abstract void init(IPackageHandler paramIPackageHandler);
  
  public abstract void sendPackage(ActivityPackage paramActivityPackage, int paramInt);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.IRequestHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */