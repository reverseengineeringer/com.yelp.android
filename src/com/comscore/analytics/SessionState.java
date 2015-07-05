package com.comscore.analytics;

public enum SessionState
{
  static
  {
    APPLICATION = new SessionState("APPLICATION", 1);
    USER = new SessionState("USER", 2);
  }
  
  private SessionState() {}
}

/* Location:
 * Qualified Name:     com.comscore.analytics.SessionState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */