package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@fv
public abstract class cl
  implements Releasable
{
  protected Context a;
  protected String b;
  protected WeakReference<ib> c;
  
  public cl(ib paramib)
  {
    a = paramib.getContext();
    b = s.e().a(a, ob);
    c = new WeakReference(paramib);
  }
  
  private void a(String paramString, Map<String, String> paramMap)
  {
    ib localib = (ib)c.get();
    if (localib != null) {
      localib.a(paramString, paramMap);
    }
  }
  
  private String c(String paramString)
  {
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return "internal";
        if (paramString.equals("error"))
        {
          i = 0;
          continue;
          if (paramString.equals("playerFailed"))
          {
            i = 1;
            continue;
            if (paramString.equals("inProgress"))
            {
              i = 2;
              continue;
              if (paramString.equals("contentLengthMissing"))
              {
                i = 3;
                continue;
                if (paramString.equals("noCacheDir"))
                {
                  i = 4;
                  continue;
                  if (paramString.equals("expireFailed"))
                  {
                    i = 5;
                    continue;
                    if (paramString.equals("badUrl"))
                    {
                      i = 6;
                      continue;
                      if (paramString.equals("downloadTimeout"))
                      {
                        i = 7;
                        continue;
                        if (paramString.equals("sizeExceeded"))
                        {
                          i = 8;
                          continue;
                          if (paramString.equals("externalAbort")) {
                            i = 9;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return "internal";
    return "io";
    return "network";
    return "policy";
  }
  
  public abstract void a();
  
  protected void a(final String paramString1, final String paramString2, final int paramInt)
  {
    a.a.post(new Runnable()
    {
      public void run()
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("event", "precacheComplete");
        localHashMap.put("src", paramString1);
        localHashMap.put("cachedSrc", paramString2);
        localHashMap.put("totalBytes", Integer.toString(paramInt));
        cl.a(cl.this, "onPrecacheEvent", localHashMap);
      }
    });
  }
  
  protected void a(final String paramString1, final String paramString2, final int paramInt1, final int paramInt2, final boolean paramBoolean)
  {
    a.a.post(new Runnable()
    {
      public void run()
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("event", "precacheProgress");
        localHashMap.put("src", paramString1);
        localHashMap.put("cachedSrc", paramString2);
        localHashMap.put("bytesLoaded", Integer.toString(paramInt1));
        localHashMap.put("totalBytes", Integer.toString(paramInt2));
        if (paramBoolean) {}
        for (String str = "1";; str = "0")
        {
          localHashMap.put("cacheReady", str);
          cl.a(cl.this, "onPrecacheEvent", localHashMap);
          return;
        }
      }
    });
  }
  
  protected void a(final String paramString1, final String paramString2, final String paramString3, final String paramString4)
  {
    a.a.post(new Runnable()
    {
      public void run()
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("event", "precacheCanceled");
        localHashMap.put("src", paramString1);
        if (!TextUtils.isEmpty(paramString2)) {
          localHashMap.put("cachedSrc", paramString2);
        }
        localHashMap.put("type", cl.a(cl.this, paramString3));
        localHashMap.put("reason", paramString3);
        if (!TextUtils.isEmpty(paramString4)) {
          localHashMap.put("message", paramString4);
        }
        cl.a(cl.this, "onPrecacheEvent", localHashMap);
      }
    });
  }
  
  public abstract boolean a(String paramString);
  
  protected String b(String paramString)
  {
    return v.a().a(paramString);
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */