package com.bugsnag.android;

class HttpClient$BadResponseException
  extends Exception
{
  public HttpClient$BadResponseException(String paramString, int paramInt)
  {
    super(String.format("Got non-200 response code (%d) from %s", new Object[] { Integer.valueOf(paramInt), paramString }));
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.HttpClient.BadResponseException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */