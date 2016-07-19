package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

public class cg$a
  extends gy
{
  private final String a = "play.google.com";
  private final String b = "market";
  private final int c = 10;
  private final String d;
  private final ib e;
  
  public cg$a(ib paramib, String paramString)
  {
    e = paramib;
    d = paramString;
  }
  
  public Intent a(String paramString)
  {
    paramString = Uri.parse(paramString);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setData(paramString);
    return localIntent;
  }
  
  public void a()
  {
    int i = 0;
    Object localObject1 = d;
    if (i < 10) {}
    for (;;)
    {
      try
      {
        localObject2 = new URL((String)localObject1);
        boolean bool = "play.google.com".equalsIgnoreCase(((URL)localObject2).getHost());
        if (!bool) {
          continue;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException1)
      {
        Object localObject2;
        HttpURLConnection localHttpURLConnection;
        gz.d("Error while parsing ping URL: " + (String)localObject1, localIndexOutOfBoundsException1);
        continue;
      }
      catch (IOException localIOException1)
      {
        gz.d("Error while pinging URL: " + (String)localObject1, localIOException1);
        continue;
      }
      catch (RuntimeException localRuntimeException1)
      {
        gz.d("Error while pinging URL: " + (String)localObject1, localRuntimeException1);
        continue;
        Object localObject4 = "";
        continue;
      }
      localObject1 = a((String)localObject1);
      s.e().a(e.getContext(), (Intent)localObject1);
      return;
      if (!"market".equalsIgnoreCase(((URL)localObject2).getProtocol()))
      {
        localHttpURLConnection = (HttpURLConnection)((URL)localObject2).openConnection();
        try
        {
          s.e().a(e.getContext(), e.o().b, false, localHttpURLConnection);
          int j = localHttpURLConnection.getResponseCode();
          Map localMap = localHttpURLConnection.getHeaderFields();
          if ((j >= 300) && (j <= 399))
          {
            localObject2 = null;
            if (localMap.containsKey("Location"))
            {
              localObject2 = (List)localMap.get("Location");
              if ((localObject2 == null) || (((List)localObject2).size() <= 0)) {
                continue;
              }
              localObject2 = (String)((List)localObject2).get(0);
              if (TextUtils.isEmpty((CharSequence)localObject2))
              {
                gz.d("Arrived at landing page, this ideally should not happen. Will open it in browser.");
                localHttpURLConnection.disconnect();
              }
            }
            else
            {
              if (!localMap.containsKey("location")) {
                continue;
              }
              localObject2 = (List)localMap.get("location");
              continue;
            }
          }
        }
        finally
        {
          try
          {
            localHttpURLConnection.disconnect();
            i += 1;
            localObject1 = localObject2;
          }
          catch (RuntimeException localRuntimeException2)
          {
            localObject1 = localRuntimeException1;
            localObject4 = localRuntimeException2;
            continue;
          }
          catch (IOException localIOException2)
          {
            localObject1 = localObject4;
            localObject4 = localIOException2;
            continue;
          }
          catch (IndexOutOfBoundsException localIndexOutOfBoundsException2)
          {
            localObject1 = localObject4;
            localObject4 = localIndexOutOfBoundsException2;
            continue;
          }
          localObject3 = finally;
          localHttpURLConnection.disconnect();
        }
      }
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */