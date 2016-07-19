package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import com.yelp.android.db.h;
import java.net.HttpURLConnection;

public final class f
  extends a<h>
{
  protected f()
  {
    super(true);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, d<h> paramd)
    throws Exception
  {
    paramHttpURLConnection.setRequestMethod("GET");
    paramHttpURLConnection.setDoOutput(false);
    b(paramHttpURLConnection);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */