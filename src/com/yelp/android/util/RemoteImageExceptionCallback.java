package com.yelp.android.util;

import android.os.Build;
import com.bumptech.glide.request.c;
import com.yelp.android.ag.j;
import com.yelp.android.analytics.e;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.av.a;
import com.yelp.android.z.b;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.HttpResponseException;

public enum RemoteImageExceptionCallback
  implements c<String, b>
{
  INSTANCE;
  
  private RemoteImageExceptionCallback() {}
  
  private static boolean isFromGoogleBot(Exception paramException)
  {
    paramException = paramException.getMessage();
    return (paramException != null) && (paramException.contains("502")) && (Build.BRAND.contains("generic"));
  }
  
  public boolean onException(Exception paramException, String paramString, j<b> paramj, boolean paramBoolean)
  {
    if ((paramException == null) || (isFromGoogleBot(paramException))) {
      return false;
    }
    paramj = new HashMap();
    String str1 = h.a();
    paramBoolean = s.a(AppData.b());
    String str2 = AppData.b().h().j();
    boolean bool = AppData.b().h().h();
    paramj.put("Resource", paramString);
    if (!str1.isEmpty()) {
      paramj.put("DNS_cache", str1);
    }
    paramj.put("Exception", paramException.getMessage());
    paramj.put("Wifi", String.valueOf(paramBoolean));
    paramj.put("Network", str2);
    paramj.put("Network_connected", String.valueOf(bool));
    AppData.b().k().a(e.a(new HttpResponseException(503, "image_error"), paramj));
    return false;
  }
  
  public boolean onResourceReady(b paramb, String paramString, j<b> paramj, boolean paramBoolean1, boolean paramBoolean2)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.RemoteImageExceptionCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */