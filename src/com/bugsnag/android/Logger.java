package com.bugsnag.android;

import android.util.Log;

class Logger
{
  static void info(String paramString)
  {
    Log.i("Bugsnag", paramString);
  }
  
  static void warn(String paramString)
  {
    Log.w("Bugsnag", paramString);
  }
  
  static void warn(String paramString, Throwable paramThrowable)
  {
    Log.w("Bugsnag", paramString, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */