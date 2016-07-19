package com.comscore.streaming;

public enum AdType
{
  private final String a;
  
  static
  {
    LinearOnDemandMidRoll = new AdType("LinearOnDemandMidRoll", 1, "a12");
    LinearOnDemandPostRoll = new AdType("LinearOnDemandPostRoll", 2, "a13");
  }
  
  private AdType(String paramString)
  {
    a = paramString;
  }
  
  protected String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.AdType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */