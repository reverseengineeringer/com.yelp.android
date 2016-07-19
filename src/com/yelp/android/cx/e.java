package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import java.net.HttpURLConnection;

public final class e
  extends a<com.yelp.android.db.e>
{
  protected e()
  {
    super(true);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, d<com.yelp.android.db.e> paramd)
    throws Exception
  {
    paramHttpURLConnection.setRequestMethod("GET");
    paramHttpURLConnection.setDoOutput(false);
    b(paramHttpURLConnection);
  }
  
  protected final String b(c paramc)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(o.a(paramc));
    localStringBuilder.append("?start=").append(paramc.c()).append("&display=").append(paramc.d());
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */