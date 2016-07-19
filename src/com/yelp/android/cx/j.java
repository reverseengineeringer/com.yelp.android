package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public class j
  extends a<com.yelp.android.db.a>
{
  private static j a;
  
  private j()
  {
    super(true);
  }
  
  public static final j a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new j();
      }
      return a;
    }
    finally {}
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, d<com.yelp.android.db.a> paramd)
    throws Exception
  {
    paramc = com.yelp.android.cv.a.a().b();
    paramc = ("refreshToken=" + d).getBytes("UTF-8");
    paramHttpURLConnection.setRequestMethod("POST");
    paramHttpURLConnection.setDoOutput(true);
    paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
    paramHttpURLConnection.setRequestProperty("Content-Length", String.valueOf(paramc.length));
    b(paramHttpURLConnection);
    paramHttpURLConnection = paramHttpURLConnection.getOutputStream();
    paramHttpURLConnection.write(paramc);
    paramHttpURLConnection.flush();
    paramHttpURLConnection.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */