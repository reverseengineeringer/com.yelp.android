package com.crashlytics.android.core;

import com.yelp.android.ax.a;
import com.yelp.android.ax.d;
import com.yelp.android.ax.e;
import com.yelp.android.ax.f;
import com.yelp.android.ax.f.a;
import io.fabric.sdk.android.k;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

class r
{
  private static final e a = new e("", "", 0L);
  private static final j[] b = new j[0];
  private static final m[] c = new m[0];
  private static final g[] d = new g[0];
  private static final b[] e = new b[0];
  private static final c[] f = new c[0];
  
  private static d a(com.yelp.android.ax.c paramc)
  {
    return new d(f / 100.0F, g, h, a, b - d, c - e);
  }
  
  private static e a(d paramd, p paramp, Map<String, String> paramMap)
    throws IOException
  {
    Object localObject;
    b localb;
    if (b != null)
    {
      localObject = b;
      paramMap = new a(new f(new l((e)localObject), a(c), a(d)), a(a(e, paramMap)));
      localObject = a(f);
      localb = paramp.a();
      if (localb == null) {
        io.fabric.sdk.android.c.h().a("Fabric", "No log data to include with this event.");
      }
      paramp.b();
      if (localb == null) {
        break label147;
      }
    }
    label147:
    for (paramp = new h(localb);; paramp = new i())
    {
      return new e(a, "ndk-crash", new j[] { paramMap, localObject, paramp });
      localObject = a;
      break;
    }
  }
  
  private static k a(a[] paramArrayOfa)
  {
    if (paramArrayOfa != null) {}
    for (b[] arrayOfb = new b[paramArrayOfa.length];; arrayOfb = e)
    {
      int i = 0;
      while (i < arrayOfb.length)
      {
        arrayOfb[i] = new b(paramArrayOfa[i]);
        i += 1;
      }
    }
    return new k(arrayOfb);
  }
  
  private static k a(com.yelp.android.ax.b[] paramArrayOfb)
  {
    if (paramArrayOfb != null) {}
    for (c[] arrayOfc = new c[paramArrayOfb.length];; arrayOfc = f)
    {
      int i = 0;
      while (i < arrayOfc.length)
      {
        arrayOfc[i] = new c(paramArrayOfb[i]);
        i += 1;
      }
    }
    return new k(arrayOfc);
  }
  
  private static k a(f.a[] paramArrayOfa)
  {
    if (paramArrayOfa != null) {}
    for (g[] arrayOfg = new g[paramArrayOfa.length];; arrayOfg = d)
    {
      int i = 0;
      while (i < arrayOfg.length)
      {
        arrayOfg[i] = new g(paramArrayOfa[i]);
        i += 1;
      }
    }
    return new k(arrayOfg);
  }
  
  private static k a(f[] paramArrayOff)
  {
    if (paramArrayOff != null) {}
    for (m[] arrayOfm = new m[paramArrayOff.length];; arrayOfm = c)
    {
      int i = 0;
      while (i < arrayOfm.length)
      {
        f localf = paramArrayOff[i];
        arrayOfm[i] = new m(localf, a(c));
        i += 1;
      }
    }
    return new k(arrayOfm);
  }
  
  public static void a(d paramd, p paramp, Map<String, String> paramMap, CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    a(paramd, paramp, paramMap).b(paramCodedOutputStream);
  }
  
  private static com.yelp.android.ax.b[] a(com.yelp.android.ax.b[] paramArrayOfb, Map<String, String> paramMap)
  {
    paramMap = new TreeMap(paramMap);
    if (paramArrayOfb != null)
    {
      int j = paramArrayOfb.length;
      i = 0;
      while (i < j)
      {
        com.yelp.android.ax.b localb = paramArrayOfb[i];
        paramMap.put(a, b);
        i += 1;
      }
    }
    paramArrayOfb = (Map.Entry[])paramMap.entrySet().toArray(new Map.Entry[paramMap.size()]);
    paramMap = new com.yelp.android.ax.b[paramArrayOfb.length];
    int i = 0;
    while (i < paramMap.length)
    {
      paramMap[i] = new com.yelp.android.ax.b((String)paramArrayOfb[i].getKey(), (String)paramArrayOfb[i].getValue());
      i += 1;
    }
    return paramMap;
  }
  
  private static final class a
    extends r.j
  {
    public a(r.f paramf, r.k paramk)
    {
      super(new r.j[] { paramf, paramk });
    }
  }
  
  private static final class b
    extends r.j
  {
    private final long a;
    private final long b;
    private final String c;
    private final String d;
    
    public b(a parama)
    {
      super(new r.j[0]);
      a = a;
      b = b;
      c = c;
      d = d;
    }
    
    public int a()
    {
      int i = CodedOutputStream.b(1, a);
      int j = CodedOutputStream.b(2, b);
      return i + CodedOutputStream.b(3, b.a(c)) + j + CodedOutputStream.b(4, b.a(d));
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, a);
      paramCodedOutputStream.a(2, b);
      paramCodedOutputStream.a(3, b.a(c));
      paramCodedOutputStream.a(4, b.a(d));
    }
  }
  
  private static final class c
    extends r.j
  {
    private final String a;
    private final String b;
    
    public c(com.yelp.android.ax.b paramb)
    {
      super(new r.j[0]);
      a = a;
      b = b;
    }
    
    public int a()
    {
      int i = CodedOutputStream.b(1, b.a(a));
      if (b == null) {}
      for (String str = "";; str = b) {
        return CodedOutputStream.b(2, b.a(str)) + i;
      }
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, b.a(a));
      if (b == null) {}
      for (String str = "";; str = b)
      {
        paramCodedOutputStream.a(2, b.a(str));
        return;
      }
    }
  }
  
  private static final class d
    extends r.j
  {
    private final float a;
    private final int b;
    private final boolean c;
    private final int d;
    private final long e;
    private final long f;
    
    public d(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
    {
      super(new r.j[0]);
      a = paramFloat;
      b = paramInt1;
      c = paramBoolean;
      d = paramInt2;
      e = paramLong1;
      f = paramLong2;
    }
    
    public int a()
    {
      return 0 + CodedOutputStream.b(1, a) + CodedOutputStream.f(2, b) + CodedOutputStream.b(3, c) + CodedOutputStream.d(4, d) + CodedOutputStream.b(5, e) + CodedOutputStream.b(6, f);
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, a);
      paramCodedOutputStream.c(2, b);
      paramCodedOutputStream.a(3, c);
      paramCodedOutputStream.a(4, d);
      paramCodedOutputStream.a(5, e);
      paramCodedOutputStream.a(6, f);
    }
  }
  
  private static final class e
    extends r.j
  {
    private final long a;
    private final String b;
    
    public e(long paramLong, String paramString, r.j... paramVarArgs)
    {
      super(paramVarArgs);
      a = paramLong;
      b = paramString;
    }
    
    public int a()
    {
      return CodedOutputStream.b(1, a) + CodedOutputStream.b(2, b.a(b));
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, a);
      paramCodedOutputStream.a(2, b.a(b));
    }
  }
  
  private static final class f
    extends r.j
  {
    public f(r.l paraml, r.k paramk1, r.k paramk2)
    {
      super(new r.j[] { paramk1, paraml, paramk2 });
    }
  }
  
  private static final class g
    extends r.j
  {
    private final long a;
    private final String b;
    private final String c;
    private final long d;
    private final int e;
    
    public g(f.a parama)
    {
      super(new r.j[0]);
      a = a;
      b = b;
      c = c;
      d = d;
      e = e;
    }
    
    public int a()
    {
      return CodedOutputStream.b(1, a) + CodedOutputStream.b(2, b.a(b)) + CodedOutputStream.b(3, b.a(c)) + CodedOutputStream.b(4, d) + CodedOutputStream.d(5, e);
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, a);
      paramCodedOutputStream.a(2, b.a(b));
      paramCodedOutputStream.a(3, b.a(c));
      paramCodedOutputStream.a(4, d);
      paramCodedOutputStream.a(5, e);
    }
  }
  
  private static final class h
    extends r.j
  {
    b a;
    
    public h(b paramb)
    {
      super(new r.j[0]);
      a = paramb;
    }
    
    public int a()
    {
      return CodedOutputStream.b(1, a);
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, a);
    }
  }
  
  private static final class i
    extends r.j
  {
    public i()
    {
      super(new r.j[0]);
    }
    
    public void b(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {}
  }
  
  private static abstract class j
  {
    private final int a;
    private final j[] b;
    
    public j(int paramInt, j... paramVarArgs)
    {
      a = paramInt;
      if (paramVarArgs != null) {}
      for (;;)
      {
        b = paramVarArgs;
        return;
        paramVarArgs = r.a();
      }
    }
    
    public int a()
    {
      return 0;
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {}
    
    public int b()
    {
      int i = c();
      return i + CodedOutputStream.l(i) + CodedOutputStream.j(a);
    }
    
    public void b(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.g(a, 2);
      paramCodedOutputStream.k(c());
      a(paramCodedOutputStream);
      j[] arrayOfj = b;
      int j = arrayOfj.length;
      int i = 0;
      while (i < j)
      {
        arrayOfj[i].b(paramCodedOutputStream);
        i += 1;
      }
    }
    
    public int c()
    {
      int j = a();
      j[] arrayOfj = b;
      int k = arrayOfj.length;
      int i = 0;
      while (i < k)
      {
        j += arrayOfj[i].b();
        i += 1;
      }
      return j;
    }
  }
  
  private static final class k
    extends r.j
  {
    private final r.j[] a;
    
    public k(r.j... paramVarArgs)
    {
      super(new r.j[0]);
      a = paramVarArgs;
    }
    
    public int b()
    {
      int i = 0;
      r.j[] arrayOfj = a;
      int k = arrayOfj.length;
      int j = 0;
      while (i < k)
      {
        j += arrayOfj[i].b();
        i += 1;
      }
      return j;
    }
    
    public void b(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      r.j[] arrayOfj = a;
      int j = arrayOfj.length;
      int i = 0;
      while (i < j)
      {
        arrayOfj[i].b(paramCodedOutputStream);
        i += 1;
      }
    }
  }
  
  private static final class l
    extends r.j
  {
    private final String a;
    private final String b;
    private final long c;
    
    public l(e parame)
    {
      super(new r.j[0]);
      a = a;
      b = b;
      c = c;
    }
    
    public int a()
    {
      return CodedOutputStream.b(1, b.a(a)) + CodedOutputStream.b(2, b.a(b)) + CodedOutputStream.b(3, c);
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      paramCodedOutputStream.a(1, b.a(a));
      paramCodedOutputStream.a(2, b.a(b));
      paramCodedOutputStream.a(3, c);
    }
  }
  
  private static final class m
    extends r.j
  {
    private final String a;
    private final int b;
    
    public m(f paramf, r.k paramk)
    {
      super(new r.j[] { paramk });
      a = a;
      b = b;
    }
    
    private boolean d()
    {
      return (a != null) && (a.length() > 0);
    }
    
    public int a()
    {
      if (d()) {}
      for (int i = CodedOutputStream.b(1, b.a(a));; i = 0) {
        return i + CodedOutputStream.d(2, b);
      }
    }
    
    public void a(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      if (d()) {
        paramCodedOutputStream.a(1, b.a(a));
      }
      paramCodedOutputStream.a(2, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */