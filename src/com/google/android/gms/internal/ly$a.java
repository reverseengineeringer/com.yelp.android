package com.google.android.gms.internal;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public final class ly$a
  extends HttpEntityEnclosingRequestBase
{
  public ly$a() {}
  
  public ly$a(String paramString)
  {
    setURI(URI.create(paramString));
  }
  
  public String getMethod()
  {
    return "PATCH";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ly.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */