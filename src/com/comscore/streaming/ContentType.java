package com.comscore.streaming;

public enum ContentType
{
  private final String a;
  
  static
  {
    Live = new ContentType("Live", 2, "c13");
    UserGeneratedLongFormOnDemand = new ContentType("UserGeneratedLongFormOnDemand", 3, "c21");
    UserGeneratedShortFormOnDemand = new ContentType("UserGeneratedShortFormOnDemand", 4, "c22");
    UserGeneratedLive = new ContentType("UserGeneratedLive", 5, "c23");
  }
  
  private ContentType(String paramString)
  {
    a = paramString;
  }
  
  protected String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.ContentType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */