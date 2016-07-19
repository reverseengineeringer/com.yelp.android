package com.bugsnag.android;

import java.io.IOException;

class HttpClient$NetworkException
  extends IOException
{
  public HttpClient$NetworkException(String paramString, Exception paramException)
  {
    super(String.format("Network error when posting to %s", new Object[] { paramString }));
    initCause(paramException);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.HttpClient.NetworkException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */