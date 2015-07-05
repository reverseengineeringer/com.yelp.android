package com.yelp.android.appdata;

import com.crashlytics.android.d;

class b
  implements Thread.UncaughtExceptionHandler
{
  b(AppData paramAppData) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    d.a(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */