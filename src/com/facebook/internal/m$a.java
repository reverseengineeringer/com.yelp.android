package com.facebook.internal;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

class m$a
  extends BufferedInputStream
{
  HttpURLConnection a;
  
  m$a(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection)
  {
    super(paramInputStream, 8192);
    a = paramHttpURLConnection;
  }
  
  public void close()
    throws IOException
  {
    super.close();
    u.a(a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */