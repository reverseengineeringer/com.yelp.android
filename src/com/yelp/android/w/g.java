package com.yelp.android.w;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.aa.d;
import com.yelp.android.ao.b;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class g
  implements c<InputStream>
{
  private static final b a = new a(null);
  private final d b;
  private final b c;
  private HttpURLConnection d;
  private InputStream e;
  private volatile boolean f;
  
  public g(d paramd)
  {
    this(paramd, a);
  }
  
  g(d paramd, b paramb)
  {
    b = paramd;
    c = paramb;
  }
  
  private InputStream a(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    int i;
    if (TextUtils.isEmpty(paramHttpURLConnection.getContentEncoding())) {
      i = paramHttpURLConnection.getContentLength();
    }
    for (e = b.a(paramHttpURLConnection.getInputStream(), i);; e = paramHttpURLConnection.getInputStream())
    {
      return e;
      if (Log.isLoggable("HttpUrlFetcher", 3)) {
        Log.d("HttpUrlFetcher", "Got non empty content encoding: " + paramHttpURLConnection.getContentEncoding());
      }
    }
  }
  
  private InputStream a(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
    throws IOException
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
    paramURL2 = paramMap.entrySet().iterator();
    while (paramURL2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramURL2.next();
      d.addRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    d.setConnectTimeout(2500);
    d.setReadTimeout(2500);
    d.setUseCaches(false);
    d.setDoInput(true);
    d.connect();
    if (f) {
      return null;
    }
    int i = d.getResponseCode();
    if (i / 100 == 2) {
      return a(d);
    }
    if (i / 100 == 3)
    {
      paramURL2 = d.getHeaderField("Location");
      if (TextUtils.isEmpty(paramURL2)) {
        throw new IOException("Received empty or null redirect url");
      }
      return a(new URL(paramURL1, paramURL2), paramInt + 1, paramURL1, paramMap);
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
    throws Exception
  {
    return a(b.a(), 0, null, b.b());
  }
  
  public String b()
  {
    return b.c();
  }
  
  public void c()
  {
    f = true;
  }
  
  private static class a
    implements g.b
  {
    public HttpURLConnection a(URL paramURL)
      throws IOException
    {
      return (HttpURLConnection)paramURL.openConnection();
    }
  }
  
  static abstract interface b
  {
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */