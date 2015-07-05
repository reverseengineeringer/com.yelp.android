package com.comscore.streaming;

public enum StreamSenseState
{
  private String a;
  private int b;
  private StreamSenseEventType c;
  
  static
  {
    PAUSED = new StreamSenseState("PAUSED", 2, "paused", 2, StreamSenseEventType.PAUSE);
  }
  
  private StreamSenseState(String paramString, int paramInt, StreamSenseEventType paramStreamSenseEventType)
  {
    a = paramString;
    b = paramInt;
    c = paramStreamSenseEventType;
  }
  
  public int getCode()
  {
    return b;
  }
  
  public String getName()
  {
    return a;
  }
  
  public StreamSenseEventType toEventType()
  {
    return c;
  }
  
  public String toString()
  {
    return getName();
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.StreamSenseState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */