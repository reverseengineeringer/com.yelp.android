package com.yelp.android.w;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

class g$a
  implements g.b
{
  public HttpURLConnection a(URL paramURL)
    throws IOException
  {
    return (HttpURLConnection)paramURL.openConnection();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */