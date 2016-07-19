package com.yelp.android.cx;

import com.yelp.android.cw.d;
import com.yelp.android.db.k;
import java.net.HttpURLConnection;
import jp.line.android.sdk.api.ApiType;

public final class c
  extends a<k>
{
  protected c()
  {
    super(true);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, com.yelp.android.cw.c paramc, d<k> paramd)
    throws Exception
  {
    paramHttpURLConnection.setRequestMethod("GET");
    paramHttpURLConnection.setDoOutput(false);
    b(paramHttpURLConnection);
  }
  
  protected final String b(com.yelp.android.cw.c paramc)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(o.a(paramc));
    if (a == ApiType.GET_PROFILES)
    {
      localStringBuilder.append("?mids=");
      paramc = paramc.e();
      if ((paramc != null) && (paramc.length > 0))
      {
        int j = paramc.length;
        int i = 0;
        while (i < j)
        {
          localStringBuilder.append(paramc[i]).append(",");
          i += 1;
        }
        localStringBuilder.delete(localStringBuilder.length() - 1, localStringBuilder.length());
      }
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("?start=").append(paramc.c()).append("&display=").append(paramc.d());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */