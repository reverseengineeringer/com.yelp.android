package com.comscore.metrics;

import android.content.Context;
import android.os.Build.VERSION;
import com.comscore.applications.d;
import com.comscore.utils.TransmissionMode;
import com.comscore.utils.c;
import com.comscore.utils.e;
import com.comscore.utils.h;
import com.comscore.utils.j;
import com.comscore.utils.k;
import com.comscore.utils.m;
import com.comscore.utils.n;
import com.yelp.android.ar.b;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;

public class a
{
  public static final boolean a;
  protected URL b;
  protected Proxy c;
  private b d;
  private com.comscore.analytics.a e;
  private m f;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if ((i < 11) || (i > 13)) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public a(com.comscore.analytics.a parama, b paramb)
  {
    e = parama;
    f = parama.r();
    d = paramb;
    b = a();
  }
  
  private static Proxy b(String paramString)
  {
    int i = paramString.indexOf(':');
    if (i != -1)
    {
      String str = paramString.substring(0, i);
      i = Integer.parseInt(paramString.substring(i + 1));
      paramString = str;
    }
    for (;;)
    {
      return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramString, i));
      i = 80;
    }
  }
  
  private boolean f()
  {
    g();
    boolean bool = c();
    if (!bool) {
      h();
    }
    return bool;
  }
  
  private void g()
  {
    TransmissionMode localTransmissionMode = e.ac();
    if ((localTransmissionMode == TransmissionMode.DEFAULT) || ((localTransmissionMode == TransmissionMode.WIFIONLY) && (e.b(e.N()))) || (localTransmissionMode == TransmissionMode.PIGGYBACK)) {
      e.p().f();
    }
  }
  
  private void h()
  {
    c.b(this, "Measurement was not transmitted: " + d.a(e.ag()));
    e.p().a(d);
  }
  
  protected HttpURLConnection a(URL paramURL)
  {
    if (c != null) {}
    for (paramURL = (HttpURLConnection)paramURL.openConnection(c);; paramURL = (HttpURLConnection)paramURL.openConnection())
    {
      paramURL.setRequestProperty("Connection", "Close");
      return paramURL;
    }
  }
  
  public URL a()
  {
    return a(d.c());
  }
  
  public URL a(String paramString)
  {
    d();
    String str = paramString.concat(d.a(e.ag()));
    int i;
    if ((str.length() > 4096) && (str.indexOf("&") > 0)) {
      i = str.substring(0, 4088).lastIndexOf("&");
    }
    for (;;)
    {
      try
      {
        paramString = URLEncoder.encode(str.substring(i + 1), "UTF-8").replace("+", "%20");
        paramString = str.substring(0, i) + "&ns_cut=" + paramString;
        if (paramString.length() > 4096) {
          paramString = paramString.substring(0, 4096);
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        try
        {
          paramString = new URL(paramString);
          return paramString;
        }
        catch (MalformedURLException paramString)
        {
          return null;
        }
        paramString = paramString;
        paramString = "0";
        continue;
      }
      continue;
      paramString = str;
    }
  }
  
  protected URL a(URL paramURL, int paramInt, String paramString)
  {
    switch (paramInt)
    {
    case 304: 
    default: 
      return null;
    }
    if (paramString == null) {
      return null;
    }
    if (paramInt == 305)
    {
      paramInt = 0;
      if (paramString.startsWith(paramURL.getProtocol() + ':')) {
        paramInt = paramURL.getProtocol().length() + 1;
      }
      int i = paramInt;
      if (paramString.startsWith("//", paramInt)) {
        i = paramInt + 2;
      }
      c = b(paramString.substring(i));
      return paramURL;
    }
    paramString = new URL(paramURL, paramString);
    if (!paramURL.getProtocol().equals(paramString.getProtocol())) {
      return null;
    }
    return paramString;
  }
  
  public boolean b()
  {
    Context localContext = e.N();
    boolean bool = k.a(localContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue();
    TransmissionMode localTransmissionMode = e.ab();
    f.a("lastMeasurementProcessedTimestamp", String.valueOf(h.a()));
    switch (b.a[localTransmissionMode.ordinal()])
    {
    default: 
      return false;
    case 1: 
      h();
      return false;
    case 2: 
      h();
      return false;
    case 3: 
      if ((!bool) || (d().booleanValue())) {
        return f();
      }
      h();
      return false;
    case 4: 
      if ((!bool) || (e.b()) || (e.b(localContext)) || (e.d(localContext))) {
        return f();
      }
      h();
      return false;
    }
    if ((!bool) || (e.b()) || (e.b(localContext)) || (e.f(localContext))) {
      return f();
    }
    h();
    return false;
  }
  
  protected boolean c()
  {
    boolean bool4 = false;
    boolean bool3 = false;
    Object localObject4 = null;
    Object localObject2 = null;
    localObject1 = localObject4;
    for (;;)
    {
      Object localObject3;
      try
      {
        localObject7 = b;
        localObject1 = localObject4;
        if (e())
        {
          localObject1 = localObject4;
          localObject4 = a((URL)localObject7);
          localObject1 = localObject4;
          localObject2 = localObject4;
          bool1 = bool4;
        }
      }
      catch (Exception localException1)
      {
        Object localObject7;
        int k;
        String str;
        int j;
        int i;
        bool1 = false;
        localObject1 = null;
      }
      finally
      {
        try
        {
          boolean bool1;
          c.b(this, "Exception sending measurement:" + localException1.getLocalizedMessage());
          c.a(localException1);
          boolean bool2 = bool1;
          if (localObject1 == null) {
            continue;
          }
          ((HttpURLConnection)localObject1).disconnect();
          return bool1;
        }
        finally
        {
          localObject3 = localObject1;
          localObject1 = localObject6;
        }
        localObject5 = finally;
        localObject3 = localObject1;
        localObject1 = localObject5;
        if (localObject3 != null) {
          ((HttpURLConnection)localObject3).disconnect();
        }
      }
      try
      {
        k = ((HttpURLConnection)localObject4).getResponseCode();
        localObject1 = localObject4;
        localObject2 = localObject4;
        bool1 = bool4;
        localObject7 = ((HttpURLConnection)localObject4).getHeaderField("Content-Type");
        localObject1 = localObject4;
        localObject2 = localObject4;
        bool1 = bool4;
        str = ((HttpURLConnection)localObject4).getHeaderField("Content-Length");
        if (k == 200)
        {
          localObject1 = localObject4;
          localObject2 = localObject4;
          bool1 = bool4;
          if (n.f((String)localObject7))
          {
            localObject1 = localObject4;
            localObject2 = localObject4;
            bool1 = bool4;
            if (((String)localObject7).indexOf("image/") == 0)
            {
              localObject1 = localObject4;
              localObject2 = localObject4;
              bool1 = bool4;
              if (n.f(str))
              {
                localObject1 = localObject4;
                localObject2 = localObject4;
                bool1 = bool4;
                if (Integer.parseInt(str) > 0) {
                  continue;
                }
              }
            }
          }
        }
        bool2 = bool3;
        if (k == 204)
        {
          bool2 = bool3;
          localObject1 = localObject4;
          localObject2 = localObject4;
          bool1 = bool4;
          if (n.f(str))
          {
            bool2 = bool3;
            localObject1 = localObject4;
            localObject2 = localObject4;
            bool1 = bool4;
            if (Integer.parseInt(str) == 0)
            {
              bool1 = true;
              bool2 = true;
              localObject1 = localObject4;
              localObject2 = localObject4;
              e.u().b();
            }
          }
        }
        bool1 = bool2;
        bool2 = bool1;
        if (localObject4 != null)
        {
          ((HttpURLConnection)localObject4).disconnect();
          bool2 = bool1;
        }
        return bool2;
      }
      catch (Exception localException2)
      {
        localObject1 = localObject3;
        localObject3 = localException2;
      }
    }
    j = 0;
    i = 0;
    for (;;)
    {
      k = i;
      localObject4 = localObject2;
      if (localObject7 == null) {
        break;
      }
      k = i;
      localObject4 = localObject2;
      if (j >= 5) {
        break;
      }
      localObject1 = localObject2;
      bool1 = bool4;
      localObject4 = a((URL)localObject7);
      localObject1 = localObject4;
      localObject2 = localObject4;
      bool1 = bool4;
      ((HttpURLConnection)localObject4).setInstanceFollowRedirects(false);
      localObject1 = localObject4;
      localObject2 = localObject4;
      bool1 = bool4;
      i = ((HttpURLConnection)localObject4).getResponseCode();
      localObject1 = localObject4;
      localObject2 = localObject4;
      bool1 = bool4;
      localObject7 = a((URL)localObject7, i, ((HttpURLConnection)localObject4).getHeaderField("Location"));
      j += 1;
      localObject2 = localObject4;
    }
  }
  
  public Boolean d()
  {
    try
    {
      Object localObject = e.N();
      boolean bool = true;
      if (e.b()) {
        localObject = "emu";
      }
      for (;;)
      {
        d.a("ns_radio", (String)localObject);
        return Boolean.valueOf(bool);
        if (e.b((Context)localObject))
        {
          localObject = "wifi";
        }
        else if (e.c((Context)localObject))
        {
          localObject = "wwan";
        }
        else if (e.e((Context)localObject))
        {
          localObject = "bth";
        }
        else if (e.d((Context)localObject))
        {
          localObject = "eth";
        }
        else
        {
          localObject = "unknown";
          bool = false;
        }
      }
      return Boolean.valueOf(false);
    }
    catch (NullPointerException localNullPointerException) {}
  }
  
  protected boolean e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.comscore.metrics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */