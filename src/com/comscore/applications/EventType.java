package com.comscore.applications;

import java.util.Locale;

public enum EventType
{
  static
  {
    CLOSE = new EventType("CLOSE", 2);
  }
  
  private EventType() {}
  
  public String toString()
  {
    if (this == KEEPALIVE) {
      return "keep-alive";
    }
    return super.toString().toLowerCase(new Locale("en", "US"));
  }
}

/* Location:
 * Qualified Name:     com.comscore.applications.EventType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */