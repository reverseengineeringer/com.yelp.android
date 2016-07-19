package com.yelp.android.cx;

import com.yelp.android.cw.c;
import java.net.HttpURLConnection;

public final class d
  extends a<com.yelp.android.db.d>
{
  protected d()
  {
    super(true);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, com.yelp.android.cw.d<com.yelp.android.db.d> paramd)
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
 * Qualified Name:     com.yelp.android.cx.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */