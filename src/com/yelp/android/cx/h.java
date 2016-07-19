package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import java.net.HttpURLConnection;
import jp.line.android.sdk.exception.LineSdkApiException;
import org.json.JSONObject;

public final class h
  extends a<String>
{
  protected h()
  {
    super(true);
  }
  
  private static String d(HttpURLConnection paramHttpURLConnection)
    throws Exception
  {
    if (paramHttpURLConnection.getResponseCode() == 200) {
      try
      {
        paramHttpURLConnection = l.a(paramHttpURLConnection).optString("result");
        return paramHttpURLConnection;
      }
      catch (Throwable paramHttpURLConnection) {}
    }
    return null;
  }
  
  protected final String a(c paramc)
    throws LineSdkApiException
  {
    return paramc.l();
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, d<String> paramd)
    throws Exception
  {
    paramHttpURLConnection.setRequestMethod("DELETE");
    paramHttpURLConnection.setDoOutput(false);
    b(paramHttpURLConnection);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */