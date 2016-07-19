package com.facebook;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Locale;

class GraphRequest$4
  implements GraphRequest.d
{
  GraphRequest$4(GraphRequest paramGraphRequest, ArrayList paramArrayList) {}
  
  public void a(String paramString1, String paramString2)
    throws IOException
  {
    a.add(String.format(Locale.US, "%s=%s", new Object[] { paramString1, URLEncoder.encode(paramString2, "UTF-8") }));
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */