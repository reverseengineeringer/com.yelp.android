package com.yelp.android.au;

import com.crashlytics.android.core.e;
import com.crashlytics.android.core.e.a;
import com.yelp.android.av.c;

public class a$a
{
  private com.crashlytics.android.answers.a a;
  private c b;
  private e c;
  private e.a d;
  
  public a a(e parame)
  {
    if (parame == null) {
      throw new NullPointerException("CrashlyticsCore Kit must not be null.");
    }
    if (c != null) {
      throw new IllegalStateException("CrashlyticsCore Kit already set.");
    }
    c = parame;
    return this;
  }
  
  public a a()
  {
    if (d != null)
    {
      if (c != null) {
        throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
      }
      c = d.a();
    }
    if (a == null) {
      a = new com.crashlytics.android.answers.a();
    }
    if (b == null) {
      b = new c();
    }
    if (c == null) {
      c = new e();
    }
    return new a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.au.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */