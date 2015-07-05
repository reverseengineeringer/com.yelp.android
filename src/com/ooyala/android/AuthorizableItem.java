package com.ooyala.android;

public abstract interface AuthorizableItem
{
  public static final String[] authCodeDescription = { "authorized", "unauthorized parent", "unauthorized domain", "unauthorized location", "current time is before the flight start time", "current time is after the flight end time", "current time is outside any availability period", "this is not a recognized embed code", "invalid signature", "missing parameters", "missing rule set", "unauthorized", "missing pcode", "unauthorized device", "invalid token", "movie expired", "unauthorized multi-synd group", "This provider was deleted", "Too many open videos. Close other videos on this account and try again in a few minutes", "Missing Account ID", "No Entitlements Found", "Non-entitled Device", "Non-registered Device", "unauthorized" };
  
  public abstract int getAuthCode();
  
  public abstract boolean isAuthorized();
}

/* Location:
 * Qualified Name:     com.ooyala.android.AuthorizableItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */