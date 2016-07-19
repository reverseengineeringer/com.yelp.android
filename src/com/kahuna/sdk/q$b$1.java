package com.kahuna.sdk;

import android.util.Log;

class q$b$1
  extends n
{
  q$b$1(q.b paramb) {}
  
  public void a(String paramString)
  {
    if (l.a) {
      Log.d("Kahuna", "Successfully sent monitor request: " + paramString);
    }
  }
  
  public void a(Throwable paramThrowable, String paramString)
  {
    super.a(paramThrowable, paramString);
    if (l.a) {
      Log.d("Kahuna", "Failed to send monitor request: " + paramString, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.q.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */