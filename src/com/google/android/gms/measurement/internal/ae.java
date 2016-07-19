package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.kz.a;
import com.google.android.gms.internal.kz.b;
import com.google.android.gms.internal.kz.c;
import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.zzsn;
import com.yelp.android.g.a;
import java.io.IOException;
import java.util.Map;

public class ae
  extends aj
{
  private final Map<String, Map<String, String>> a = new a();
  private final Map<String, Map<String, Boolean>> b = new a();
  private final Map<String, kz.b> c = new a();
  
  ae(ag paramag)
  {
    super(paramag);
  }
  
  private Map<String, String> a(kz.b paramb)
  {
    a locala = new a();
    if ((paramb != null) && (d != null))
    {
      paramb = d;
      int j = paramb.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramb[i];
        if (localObject != null) {
          locala.put(a, b);
        }
        i += 1;
      }
    }
    return locala;
  }
  
  private kz.b b(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return new kz.b();
    }
    paramArrayOfByte = lk.a(paramArrayOfByte);
    kz.b localb = new kz.b();
    try
    {
      localb.a(paramArrayOfByte);
      s().z().a("Parsed config. version, gmp_app_id", a, b);
      return localb;
    }
    catch (IOException paramArrayOfByte)
    {
      s().c().a("Unable to merge remote config", paramString, paramArrayOfByte);
    }
    return null;
  }
  
  private Map<String, Boolean> b(kz.b paramb)
  {
    a locala = new a();
    if ((paramb != null) && (e != null))
    {
      paramb = e;
      int j = paramb.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramb[i];
        if (localObject != null) {
          locala.put(a, b);
        }
        i += 1;
      }
    }
    return locala;
  }
  
  private void b(String paramString)
  {
    G();
    f();
    zzx.zzcM(paramString);
    if (!c.containsKey(paramString))
    {
      localObject = n().d(paramString);
      if (localObject == null)
      {
        a.put(paramString, null);
        b.put(paramString, null);
        c.put(paramString, null);
      }
    }
    else
    {
      return;
    }
    Object localObject = b(paramString, (byte[])localObject);
    a.put(paramString, a((kz.b)localObject));
    b.put(paramString, b((kz.b)localObject));
    c.put(paramString, localObject);
  }
  
  protected kz.b a(String paramString)
  {
    G();
    f();
    zzx.zzcM(paramString);
    b(paramString);
    return (kz.b)c.get(paramString);
  }
  
  String a(String paramString1, String paramString2)
  {
    f();
    b(paramString1);
    paramString1 = (Map)a.get(paramString1);
    if (paramString1 != null) {
      return (String)paramString1.get(paramString2);
    }
    return null;
  }
  
  protected void a() {}
  
  protected boolean a(String paramString, byte[] paramArrayOfByte)
  {
    G();
    f();
    zzx.zzcM(paramString);
    kz.b localb = b(paramString, paramArrayOfByte);
    if (localb == null) {
      return false;
    }
    b.put(paramString, b(localb));
    c.put(paramString, localb);
    a.put(paramString, a(localb));
    g().a(paramString, f);
    try
    {
      f = null;
      byte[] arrayOfByte = new byte[localb.g()];
      localb.a(zzsn.a(arrayOfByte));
      paramArrayOfByte = arrayOfByte;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        s().c().a("Unable to serialize reduced-size config.  Storing full config instead.", localIOException);
      }
    }
    n().a(paramString, paramArrayOfByte);
    return true;
  }
  
  boolean b(String paramString1, String paramString2)
  {
    f();
    b(paramString1);
    paramString1 = (Map)b.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Boolean)paramString1.get(paramString2);
      if (paramString1 == null) {
        return false;
      }
      return paramString1.booleanValue();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */