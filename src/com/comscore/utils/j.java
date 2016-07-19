package com.comscore.utils;

import android.content.Context;
import com.comscore.applications.EventType;
import com.yelp.android.ar.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;

public class j
{
  protected final com.comscore.analytics.a a;
  private int b;
  private int c;
  private int d;
  private long e;
  private long f;
  private String g = null;
  private final String h;
  private ArrayList<String> i = null;
  private String j = null;
  private int k = 0;
  private long l = 0L;
  private long m = 0L;
  
  public j(com.comscore.analytics.a parama)
  {
    this(parama, "cs_cache_");
  }
  
  protected j(com.comscore.analytics.a parama, String paramString)
  {
    a = parama;
    h = paramString;
    a(2000);
    b(100);
    c(10);
    d(30);
    e(31);
    k();
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (paramString != null)
    {
      if (paramBoolean) {
        c(paramString);
      }
      i.a(a, paramString);
      i.remove(paramString);
    }
  }
  
  private boolean a(long paramLong)
  {
    long l1 = h.a();
    return f * 24L * 60L * 60L * 1000L - (l1 - paramLong) <= 0L;
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    HttpClient localHttpClient = e.a();
    paramString2 = new HttpPost(paramString2);
    try
    {
      paramString1 = new StringEntity(paramString1, "UTF-8");
      paramString1.setContentType("text/xml");
      paramString2.setHeader("User-Agent", System.getProperty("http.agent"));
      paramString2.setEntity(paramString1);
      c.a(this, "Sending POST request");
      paramString1 = localHttpClient.execute(paramString2);
      int n = paramString1.getStatusLine().getStatusCode();
      c.a(this, "Response:" + n);
      c.a(this, "Cache flushed");
      paramString1 = EntityUtils.toString(paramString1.getEntity());
      if ((n == 200) && (n.f(paramString1)))
      {
        boolean bool = paramString1.startsWith("OK");
        if (bool) {
          return true;
        }
      }
    }
    catch (SSLException paramString1)
    {
      c.b(this, paramString1.getMessage());
      a.b(TransmissionMode.DISABLED, true);
      e();
      return false;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        c.b(this, "Exception in flush:" + paramString1.getLocalizedMessage());
        c.a(paramString1);
      }
    }
  }
  
  private static String[] a(String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      throw new IllegalArgumentException();
    }
    int n = paramArrayOfString.length;
    if ((paramInt1 < 0) || (paramInt1 > n)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    paramInt2 -= paramInt1;
    n = Math.min(paramInt2, n - paramInt1);
    String[] arrayOfString = new String[paramInt2];
    System.arraycopy(paramArrayOfString, paramInt1, arrayOfString, 0, n);
    return arrayOfString;
  }
  
  private void c(String paramString)
  {
    m localm = a.r();
    if (localm.a(paramString).booleanValue()) {
      f(Integer.valueOf(localm.b(paramString)).intValue());
    }
  }
  
  private void d(String paramString)
  {
    c.a(this, "Creating new cache batch file");
    String str = h + o.a(paramString, "ns_ts");
    i.a(a, str, 0, paramString);
    if (i == null) {
      i = new ArrayList();
    }
    i.add(str);
    i();
  }
  
  private int e(String paramString)
  {
    m localm = a.r();
    int n = 0;
    if (paramString != null)
    {
      if (localm.a(paramString).booleanValue()) {
        n = Integer.valueOf(localm.b(paramString)).intValue();
      }
    }
    else {
      return n;
    }
    return i.a(a.N(), paramString).length;
  }
  
  private void f(int paramInt)
  {
    m localm = a.r();
    int n = paramInt;
    if (localm.a("CACHE_DROPPED_MEASUREMENTS").booleanValue()) {
      n = paramInt + Integer.valueOf(localm.b("CACHE_DROPPED_MEASUREMENTS")).intValue();
    }
    localm.a("CACHE_DROPPED_MEASUREMENTS", String.valueOf(n));
  }
  
  private String[] f(String paramString)
  {
    String[] arrayOfString = i.a(a.N(), paramString);
    int n = 0;
    int i2 = 0;
    for (;;)
    {
      int i1 = n;
      if (i2 < arrayOfString.length) {
        i1 = n;
      }
      try
      {
        long l1 = Long.parseLong(o.a(arrayOfString[i2], "ns_ts"));
        i1 = n;
        if (!a(l1)) {}
        for (n = 1;; n = 0)
        {
          i1 = n;
          if (n == 0) {
            break;
          }
          i1 = n;
          c.a(this, "Valid timestamp found: " + l1);
          i1 = n;
          if (i1 != 0) {
            break label154;
          }
          c.a(this, "All events in the file " + paramString + " are expired");
          a(paramString, true);
          return null;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i2 += 1;
        n = i1;
      }
    }
    label154:
    f(i2);
    return a(arrayOfString, i2, arrayOfString.length);
  }
  
  private long g(String paramString)
  {
    return Long.valueOf(paramString.substring(h.length())).longValue();
  }
  
  private boolean h()
  {
    if ((j().booleanValue()) && (!d()) && (a.aa() != null))
    {
      long l1;
      if (k >= d)
      {
        l1 = e * 1000L * 60L - (h.a() - m);
        if (l1 <= 0L)
        {
          k = 0;
          m = 0L;
        }
      }
      else
      {
        return true;
      }
      c.a(this, "Max flushes in a row (" + d + ") reached. Waiting " + l1 / 1000.0D / 60.0D + " minutes");
    }
    return false;
  }
  
  private void i()
  {
    l = 0L;
    if (j != null) {
      j = null;
    }
  }
  
  private Boolean j()
  {
    Context localContext = a.N();
    if (e.b()) {
      return Boolean.valueOf(true);
    }
    if (!k.a(localContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) {
      return Boolean.valueOf(true);
    }
    if (e.b(localContext)) {
      return Boolean.valueOf(true);
    }
    if (e.c(localContext)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  private void k()
  {
    List localList = l();
    int n = localList.size() - 1;
    while (n >= 0)
    {
      if (a(g((String)localList.get(n))))
      {
        c.a(this, "Deleting expired cache file " + (String)localList.get(n));
        a((String)localList.get(n), true);
      }
      n -= 1;
    }
  }
  
  private List<String> l()
  {
    if (i == null) {
      i = i.a(a.N());
    }
    return i;
  }
  
  private String m()
  {
    if ((i != null) && (i.size() > 0)) {
      return (String)i.get(0);
    }
    return null;
  }
  
  private String n()
  {
    if ((i != null) && (i.size() > 0)) {
      return (String)i.get(i.size() - 1);
    }
    return null;
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    if (!a.ao()) {
      return;
    }
    b = paramInt;
  }
  
  public void a(EventType paramEventType, HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (!a.ao()) {
      return;
    }
    paramEventType = com.comscore.applications.c.a(a, paramEventType, paramHashMap, null);
    a.t().c(paramEventType);
    a.t().b(paramEventType);
    a(paramEventType, paramBoolean);
  }
  
  public void a(b paramb)
  {
    a(paramb, false);
  }
  
  public void a(b paramb, boolean paramBoolean)
  {
    if (!a.ao()) {
      return;
    }
    if (paramBoolean)
    {
      a.s().a(new r(this, paramb), true);
      return;
    }
    a(paramb.a(a.ag()));
  }
  
  public void a(String paramString)
  {
    for (;;)
    {
      try
      {
        boolean bool = a.ao();
        if (!bool) {
          return;
        }
        if ((a.ac() == TransmissionMode.DISABLED) || (a.aa() == null) || (!n.f(o.a(paramString, "ns_ts")))) {
          continue;
        }
        String str = n();
        if (str == null) {
          break label197;
        }
        if (e(str) < b())
        {
          paramString = "\n" + paramString;
          i.a(a, str, 32768, paramString);
          i();
          continue;
        }
        c.a(this, "The newest cache batch file is full");
      }
      finally {}
      if (l().size() >= a() / b())
      {
        c.a(this, "reached the cache max (" + a() + ") size");
        a(m(), true);
      }
      d(paramString);
      continue;
      label197:
      d(paramString);
    }
  }
  
  public int b()
  {
    return c;
  }
  
  public void b(int paramInt)
  {
    if (!a.ao()) {}
    while (paramInt <= 0) {
      return;
    }
    c = paramInt;
  }
  
  public void b(String paramString)
  {
    if (!a.ao()) {
      return;
    }
    g = paramString;
  }
  
  public int c()
  {
    int i1 = e(n());
    List localList = l();
    int n = i1;
    if (localList.size() > 0) {
      n = i1 + (localList.size() - 1) * b();
    }
    return n;
  }
  
  public void c(int paramInt)
  {
    d = paramInt;
  }
  
  public void d(int paramInt)
  {
    if (!a.ao()) {
      return;
    }
    e = paramInt;
  }
  
  public boolean d()
  {
    return c() == 0;
  }
  
  public void e()
  {
    if (!a.ao()) {}
    for (;;)
    {
      return;
      List localList = l();
      int n = localList.size();
      while (n > 0)
      {
        a((String)localList.get(n - 1), true);
        n -= 1;
      }
    }
  }
  
  public void e(int paramInt)
  {
    if (!a.ao()) {
      return;
    }
    f = paramInt;
  }
  
  public boolean f()
  {
    boolean bool2 = false;
    boolean bool1 = false;
    for (;;)
    {
      long l1;
      try
      {
        boolean bool3 = a.ao();
        if (!bool3) {
          return bool1;
        }
        m localm = a.r();
        k();
        l1 = e * 1000L * 60L - (h.a() - l);
        if (l1 > 0L) {
          break label341;
        }
        l = 0L;
        bool1 = bool2;
        if (!h()) {
          continue;
        }
        Object localObject1 = null;
        c.a(this, "Cache is not empty, contains " + i.size() + " files");
        if (j == null)
        {
          String str2 = n();
          c.a(this, "reading events from the file " + str2);
          String[] arrayOfString = f(str2);
          localObject1 = str2;
          if (arrayOfString != null)
          {
            localObject1 = str2;
            if (arrayOfString.length > 0)
            {
              if (!localm.a("CACHE_DROPPED_MEASUREMENTS").booleanValue()) {
                break label323;
              }
              localObject1 = localm.b("CACHE_DROPPED_MEASUREMENTS");
              j = o.a(arrayOfString, (String)localObject1);
              localObject1 = str2;
            }
          }
        }
        if ((j == null) || (j.length() <= 0)) {
          continue;
        }
        bool1 = a(j, g());
        if (!bool1) {
          break label331;
        }
        k += 1;
        a((String)localObject1, false);
        i();
        m = h.a();
        localm.c("CACHE_DROPPED_MEASUREMENTS");
        a.r().a("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
        bool2 = bool1;
        continue;
        String str1 = "0";
      }
      finally {}
      label323:
      continue;
      label331:
      l = h.a();
      continue;
      label341:
      c.a(this, "Waiting " + l1 / 1000.0D / 60.0D + " minutes");
    }
  }
  
  protected String g()
  {
    Object localObject;
    if (g != null)
    {
      localObject = new StringBuilder(g);
      if (((StringBuilder)localObject).indexOf("?") != -1) {
        break label220;
      }
      ((StringBuilder)localObject).append("?");
    }
    label220:
    for (int n = 0;; n = 1)
    {
      String str = a.aa();
      int i1 = n;
      if (str != null)
      {
        i1 = n;
        if (!str.equals(""))
        {
          if (n != 0) {
            ((StringBuilder)localObject).append("&");
          }
          ((StringBuilder)localObject).append("c2=");
          ((StringBuilder)localObject).append(str);
          i1 = 1;
        }
      }
      str = n.a(String.format("JetportGotAMaskOfThe%sS.D_K-", new Object[] { a.U() }));
      if ((str != null) && (!str.equals("")))
      {
        if (i1 != 0) {
          ((StringBuilder)localObject).append("&");
        }
        ((StringBuilder)localObject).append("s=");
        ((StringBuilder)localObject).append(str);
      }
      return ((StringBuilder)localObject).toString().toLowerCase(new Locale("en", "US"));
      if (a.ae()) {}
      for (localObject = "https://udm.scorecardresearch.com/offline";; localObject = "http://udm.scorecardresearch.com/offline")
      {
        localObject = new StringBuilder((String)localObject);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */