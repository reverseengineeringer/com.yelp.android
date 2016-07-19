package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.q;
import com.google.android.gms.analytics.internal.s;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.in;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.ip;
import com.google.android.gms.internal.iq;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.ku;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.kw;
import com.google.android.gms.internal.kx;
import com.google.android.gms.measurement.d;
import com.yelp.android.bg.a;
import com.yelp.android.bg.b;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class i
  extends q
  implements com.google.android.gms.measurement.j
{
  private static DecimalFormat a;
  private final t b;
  private final String c;
  private final Uri d;
  private final boolean e;
  private final boolean f;
  
  public i(t paramt, String paramString)
  {
    this(paramt, paramString, true, false);
  }
  
  public i(t paramt, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramt);
    zzx.zzcM(paramString);
    b = paramt;
    c = paramString;
    e = paramBoolean1;
    f = paramBoolean2;
    d = a(c);
  }
  
  static Uri a(String paramString)
  {
    zzx.zzcM(paramString);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("google-analytics.com");
    localBuilder.path(paramString);
    return localBuilder.build();
  }
  
  static String a(double paramDouble)
  {
    if (a == null) {
      a = new DecimalFormat("0.######");
    }
    return a.format(paramDouble);
  }
  
  private static String a(Object paramObject)
  {
    if (paramObject == null) {
      paramObject = null;
    }
    String str;
    do
    {
      return (String)paramObject;
      if (!(paramObject instanceof String)) {
        break;
      }
      str = (String)paramObject;
      paramObject = str;
    } while (!TextUtils.isEmpty(str));
    return null;
    if ((paramObject instanceof Double))
    {
      paramObject = (Double)paramObject;
      if (((Double)paramObject).doubleValue() != 0.0D) {
        return a(((Double)paramObject).doubleValue());
      }
      return null;
    }
    if ((paramObject instanceof Boolean))
    {
      if (paramObject != Boolean.FALSE) {
        return "1";
      }
      return null;
    }
    return String.valueOf(paramObject);
  }
  
  private static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    return localStringBuilder.toString();
  }
  
  private static void a(Map<String, String> paramMap, String paramString, double paramDouble)
  {
    if (paramDouble != 0.0D) {
      paramMap.put(paramString, a(paramDouble));
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 0) && (paramInt2 > 0)) {
      paramMap.put(paramString, paramInt1 + "x" + paramInt2);
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramMap.put(paramString, "1");
    }
  }
  
  public static Map<String, String> b(d paramd)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = (ip)paramd.a(ip.class);
    Object localObject2;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject1 = ((ip)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = a(((Map.Entry)localObject2).getValue());
        if (localObject3 != null) {
          localHashMap.put(((Map.Entry)localObject2).getKey(), localObject3);
        }
      }
    }
    localObject1 = (iq)paramd.a(iq.class);
    if (localObject1 != null)
    {
      a(localHashMap, "t", ((iq)localObject1).a());
      a(localHashMap, "cid", ((iq)localObject1).b());
      a(localHashMap, "uid", ((iq)localObject1).c());
      a(localHashMap, "sc", ((iq)localObject1).f());
      a(localHashMap, "sf", ((iq)localObject1).h());
      a(localHashMap, "ni", ((iq)localObject1).g());
      a(localHashMap, "adid", ((iq)localObject1).d());
      a(localHashMap, "ate", ((iq)localObject1).e());
    }
    localObject1 = (kv)paramd.a(kv.class);
    if (localObject1 != null)
    {
      a(localHashMap, "cd", ((kv)localObject1).b());
      a(localHashMap, "a", ((kv)localObject1).c());
      a(localHashMap, "dr", ((kv)localObject1).d());
    }
    localObject1 = (kt)paramd.a(kt.class);
    if (localObject1 != null)
    {
      a(localHashMap, "ec", ((kt)localObject1).a());
      a(localHashMap, "ea", ((kt)localObject1).b());
      a(localHashMap, "el", ((kt)localObject1).c());
      a(localHashMap, "ev", ((kt)localObject1).d());
    }
    localObject1 = (kq)paramd.a(kq.class);
    if (localObject1 != null)
    {
      a(localHashMap, "cn", ((kq)localObject1).a());
      a(localHashMap, "cs", ((kq)localObject1).b());
      a(localHashMap, "cm", ((kq)localObject1).c());
      a(localHashMap, "ck", ((kq)localObject1).d());
      a(localHashMap, "cc", ((kq)localObject1).e());
      a(localHashMap, "ci", ((kq)localObject1).f());
      a(localHashMap, "anid", ((kq)localObject1).g());
      a(localHashMap, "gclid", ((kq)localObject1).h());
      a(localHashMap, "dclid", ((kq)localObject1).i());
      a(localHashMap, "aclid", ((kq)localObject1).j());
    }
    localObject1 = (ku)paramd.a(ku.class);
    if (localObject1 != null)
    {
      a(localHashMap, "exd", ((ku)localObject1).a());
      a(localHashMap, "exf", ((ku)localObject1).b());
    }
    localObject1 = (kw)paramd.a(kw.class);
    if (localObject1 != null)
    {
      a(localHashMap, "sn", ((kw)localObject1).a());
      a(localHashMap, "sa", ((kw)localObject1).b());
      a(localHashMap, "st", ((kw)localObject1).c());
    }
    localObject1 = (kx)paramd.a(kx.class);
    if (localObject1 != null)
    {
      a(localHashMap, "utv", ((kx)localObject1).a());
      a(localHashMap, "utt", ((kx)localObject1).b());
      a(localHashMap, "utc", ((kx)localObject1).c());
      a(localHashMap, "utl", ((kx)localObject1).d());
    }
    localObject1 = (in)paramd.a(in.class);
    if (localObject1 != null)
    {
      localObject1 = ((in)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = j.b(((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, ((Map.Entry)localObject2).getValue());
        }
      }
    }
    localObject1 = (io)paramd.a(io.class);
    if (localObject1 != null)
    {
      localObject1 = ((io)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = j.c(((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, a(((Double)((Map.Entry)localObject2).getValue()).doubleValue()));
        }
      }
    }
    localObject1 = (ks)paramd.a(ks.class);
    if (localObject1 != null)
    {
      localObject2 = ((ks)localObject1).a();
      if (localObject2 != null)
      {
        localObject2 = ((b)localObject2).a().entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          if (((String)((Map.Entry)localObject3).getKey()).startsWith("&")) {
            localHashMap.put(((String)((Map.Entry)localObject3).getKey()).substring(1), ((Map.Entry)localObject3).getValue());
          } else {
            localHashMap.put(((Map.Entry)localObject3).getKey(), ((Map.Entry)localObject3).getValue());
          }
        }
      }
      localObject2 = ((ks)localObject1).d().iterator();
      int i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((com.yelp.android.bg.c)((Iterator)localObject2).next()).a(j.g(i)));
        i += 1;
      }
      localObject2 = ((ks)localObject1).b().iterator();
      i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((a)((Iterator)localObject2).next()).a(j.e(i)));
        i += 1;
      }
      localObject1 = ((ks)localObject1).c().entrySet().iterator();
      i = 1;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        Object localObject4 = (List)((Map.Entry)localObject2).getValue();
        localObject3 = j.j(i);
        localObject4 = ((List)localObject4).iterator();
        int j = 1;
        while (((Iterator)localObject4).hasNext())
        {
          localHashMap.putAll(((a)((Iterator)localObject4).next()).a((String)localObject3 + j.h(j)));
          j += 1;
        }
        if (!TextUtils.isEmpty((CharSequence)((Map.Entry)localObject2).getKey())) {
          localHashMap.put((String)localObject3 + "nm", ((Map.Entry)localObject2).getKey());
        }
        i += 1;
      }
    }
    localObject1 = (kr)paramd.a(kr.class);
    if (localObject1 != null)
    {
      a(localHashMap, "ul", ((kr)localObject1).f());
      a(localHashMap, "sd", ((kr)localObject1).a());
      a(localHashMap, "sr", ((kr)localObject1).b(), ((kr)localObject1).c());
      a(localHashMap, "vp", ((kr)localObject1).d(), ((kr)localObject1).e());
    }
    paramd = (kp)paramd.a(kp.class);
    if (paramd != null)
    {
      a(localHashMap, "an", paramd.a());
      a(localHashMap, "aid", paramd.c());
      a(localHashMap, "aiid", paramd.d());
      a(localHashMap, "av", paramd.b());
    }
    return localHashMap;
  }
  
  public Uri a()
  {
    return d;
  }
  
  public void a(d paramd)
  {
    zzx.zzz(paramd);
    zzx.zzb(paramd.f(), "Can't deliver not submitted measurement");
    zzx.zzcE("deliver should be called on worker thread");
    Object localObject2 = paramd.a();
    Object localObject1 = (iq)((d)localObject2).b(iq.class);
    if (TextUtils.isEmpty(((iq)localObject1).a())) {
      p().a(b((d)localObject2), "Ignoring measurement without type");
    }
    do
    {
      return;
      if (TextUtils.isEmpty(((iq)localObject1).b()))
      {
        p().a(b((d)localObject2), "Ignoring measurement without client id");
        return;
      }
    } while (b.k().f());
    double d1 = ((iq)localObject1).h();
    if (n.a(d1, ((iq)localObject1).b()))
    {
      b("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(d1));
      return;
    }
    localObject2 = b((d)localObject2);
    ((Map)localObject2).put("v", "1");
    ((Map)localObject2).put("_v", s.b);
    ((Map)localObject2).put("tid", c);
    if (b.k().e())
    {
      c("Dry run is enabled. GoogleAnalytics would have sent", a((Map)localObject2));
      return;
    }
    HashMap localHashMap = new HashMap();
    n.a(localHashMap, "uid", ((iq)localObject1).c());
    Object localObject3 = (kp)paramd.a(kp.class);
    if (localObject3 != null)
    {
      n.a(localHashMap, "an", ((kp)localObject3).a());
      n.a(localHashMap, "aid", ((kp)localObject3).c());
      n.a(localHashMap, "av", ((kp)localObject3).b());
      n.a(localHashMap, "aiid", ((kp)localObject3).d());
    }
    localObject3 = ((iq)localObject1).b();
    String str = c;
    if (!TextUtils.isEmpty(((iq)localObject1).d())) {}
    for (boolean bool = true;; bool = false)
    {
      localObject1 = new v(0L, (String)localObject3, str, bool, 0L, localHashMap);
      ((Map)localObject2).put("_s", String.valueOf(t().a((v)localObject1)));
      paramd = new com.google.android.gms.analytics.internal.c(p(), (Map)localObject2, paramd.d(), true);
      t().a(paramd);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */