package com.kahuna.sdk;

import android.util.Log;
import com.yelp.android.ao.f;

class ae
  extends f
{
  ae(ad paramad) {}
  
  public void a(String paramString)
  {
    if (h.a) {
      Log.d("KahunaAnalytics", "Successfully sent monitor request: " + paramString);
    }
  }
  
  public void a(Throwable paramThrowable, String paramString)
  {
    super.a(paramThrowable, paramString);
    if (h.a) {
      Log.d("KahunaAnalytics", "Failed to send monitor request: " + paramString, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */