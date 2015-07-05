package com.ooyala.android;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

class Analytics$2
  extends WebChromeClient
{
  Analytics$2(Analytics paramAnalytics) {}
  
  public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    Log.v("Analytics", "javascript: " + paramString2 + "@" + paramInt + ": " + paramString1);
  }
  
  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    onConsoleMessage(paramConsoleMessage.message(), paramConsoleMessage.lineNumber(), paramConsoleMessage.sourceId());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Analytics.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */