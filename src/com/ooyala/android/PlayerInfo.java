package com.ooyala.android;

import java.util.Set;

public abstract interface PlayerInfo
{
  public abstract String getDevice();
  
  public abstract int getMaxBitrate();
  
  public abstract int getMaxHeight();
  
  public abstract int getMaxWidth();
  
  public abstract Set<String> getSupportedFormats();
  
  public abstract Set<String> getSupportedProfiles();
  
  public abstract String getUserAgent();
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */