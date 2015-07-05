package com.comscore.streaming;

public enum StreamSenseEventType
{
  private String a;
  private int b;
  
  static
  {
    PAUSE = new StreamSenseEventType("PAUSE", 1, "pause", 1);
    END = new StreamSenseEventType("END", 2, "end", 2);
    BUFFER = new StreamSenseEventType("BUFFER", 3, "buffer", 3);
    KEEP_ALIVE = new StreamSenseEventType("KEEP_ALIVE", 4, "keep-alive", 4);
    HEART_BEAT = new StreamSenseEventType("HEART_BEAT", 5, "hb", 5);
    CUSTOM = new StreamSenseEventType("CUSTOM", 6, "custom", 6);
    AD_PLAY = new StreamSenseEventType("AD_PLAY", 7, "ad_play", 7);
    AD_PAUSE = new StreamSenseEventType("AD_PAUSE", 8, "ad_pause", 8);
    AD_END = new StreamSenseEventType("AD_END", 9, "ad_end", 9);
  }
  
  private StreamSenseEventType(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
  }
  
  public int getCode()
  {
    return b;
  }
  
  public String getName()
  {
    return a;
  }
  
  public String toString()
  {
    return getName();
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.StreamSenseEventType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */