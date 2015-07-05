package com.yelp.android.r;

import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.yelp.android.v.e;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public class f
  implements c<InputStream>
{
  private static final i a = new h(null);
  private final e b;
  private final i c;
  private HttpURLConnection d;
  private InputStream e;
  private volatile boolean f;
  
  public f(e parame)
  {
    this(parame, a);
  }
  
  f(e parame, i parami)
  {
    b = parame;
    c = parami;
  }
  
  private InputStream a(URL paramURL1, int paramInt, URL paramURL2)
  {
    if (paramInt >= 5) {
      throw new IOException("Too many (> 5) redirects!");
    }
    if (paramURL2 != null) {
      try
      {
        if (paramURL1.toURI().equals(paramURL2.toURI())) {
          throw new IOException("In re-direct loop");
        }
      }
      catch (URISyntaxException paramURL2) {}
    }
    d = c.a(paramURL1);
    d.setConnectTimeout(2500);
    d.setReadTimeout(2500);
    d.setUseCaches(false);
    d.setDoInput(true);
    d.connect();
    if (f) {
      return null;
    }
    int i = d.getResponseCode();
    if (i / 100 == 2)
    {
      e = d.getInputStream();
      return e;
    }
    if (i / 100 == 3)
    {
      paramURL2 = d.getHeaderField("Location");
      if (TextUtils.isEmpty(paramURL2)) {
        throw new IOException("Received empty or null redirect url");
      }
      return a(new URL(paramURL1, paramURL2), paramInt + 1, paramURL1);
    }
    if (i == -1) {
      throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
    }
    throw new IOException("Request failed " + i + ": " + d.getResponseMessage());
  }
  
  public void a()
  {
    if (e != null) {}
    try
    {
      e.close();
      if (d != null) {
        d.disconnect();
      }
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public InputStream b(Priority paramPriority)
  {
    return a(b.a(), 0, null);
  }
  
  public String b()
  {
    return b.toString();
  }
  
  public void c()
  {
    f = true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */