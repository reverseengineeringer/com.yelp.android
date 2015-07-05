package com.google.android.gms.tagmanager;

import android.util.Log;

class x
  implements bi
{
  private int yM = 5;
  
  public void S(String paramString)
  {
    if (yM <= 3) {
      Log.d("GoogleTagManager", paramString);
    }
  }
  
  public void T(String paramString)
  {
    if (yM <= 6) {
      Log.e("GoogleTagManager", paramString);
    }
  }
  
  public void U(String paramString)
  {
    if (yM <= 4) {
      Log.i("GoogleTagManager", paramString);
    }
  }
  
  public void V(String paramString)
  {
    if (yM <= 2) {
      Log.v("GoogleTagManager", paramString);
    }
  }
  
  public void W(String paramString)
  {
    if (yM <= 5) {
      Log.w("GoogleTagManager", paramString);
    }
  }
  
  public void b(String paramString, Throwable paramThrowable)
  {
    if (yM <= 6) {
      Log.e("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void d(String paramString, Throwable paramThrowable)
  {
    if (yM <= 5) {
      Log.w("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void setLogLevel(int paramInt)
  {
    yM = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */