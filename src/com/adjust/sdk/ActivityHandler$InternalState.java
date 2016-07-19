package com.adjust.sdk;

public class ActivityHandler$InternalState
{
  boolean background;
  boolean enabled;
  boolean offline;
  
  public ActivityHandler$InternalState(ActivityHandler paramActivityHandler) {}
  
  public boolean isBackground()
  {
    return background;
  }
  
  public boolean isDisabled()
  {
    return !enabled;
  }
  
  public boolean isEnabled()
  {
    return enabled;
  }
  
  public boolean isForeground()
  {
    return !background;
  }
  
  public boolean isOffline()
  {
    return offline;
  }
  
  public boolean isOnline()
  {
    return !offline;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityHandler.InternalState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */