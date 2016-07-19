package com.yelp.android.cx;

import com.yelp.android.cw.d;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public final class b
  extends a<com.yelp.android.db.a>
{
  protected b()
  {
    super(false);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, com.yelp.android.cw.c paramc, d<com.yelp.android.db.a> paramd)
    throws Exception
  {
    paramc = ("channelId=" + jp.line.android.sdk.c.a().d() + "&requestToken=" + paramc.a() + "&otp=" + paramc.b()).getBytes("UTF-8");
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
 * Qualified Name:     com.yelp.android.cx.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */