package com.crashlytics.android.answers;

import java.util.Set;

public class j
  implements f
{
  static final Set<SessionEvent.Type> b = new SamplingEventFilter.1();
  final int a;
  
  public j(int paramInt)
  {
    a = paramInt;
  }
  
  public boolean a(SessionEvent paramSessionEvent)
  {
    if (b(paramSessionEvent)) {
      return false;
    }
    return c(paramSessionEvent);
  }
  
  boolean b(SessionEvent paramSessionEvent)
  {
    return (!b.contains(c)) || (a.f != null);
  }
  
  boolean c(SessionEvent paramSessionEvent)
  {
    return Math.abs(a.c.hashCode() % a) != 0;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */