package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ky.a;
import com.google.android.gms.internal.ky.b;
import com.google.android.gms.internal.ky.c;
import com.google.android.gms.internal.ky.d;
import com.google.android.gms.internal.ky.e;
import com.google.android.gms.internal.la.a;
import com.google.android.gms.internal.la.b;
import com.google.android.gms.internal.la.c;
import com.google.android.gms.internal.la.f;
import com.google.android.gms.internal.la.g;
import com.yelp.android.g.a;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

class m
  extends aj
{
  m(ag paramag)
  {
    super(paramag);
  }
  
  private Boolean a(ky.b paramb, la.b paramb1, long paramLong)
  {
    if (e != null)
    {
      localObject1 = new ac(e).a(paramLong);
      if (localObject1 == null) {
        return null;
      }
      if (!((Boolean)localObject1).booleanValue()) {
        return Boolean.valueOf(false);
      }
    }
    Object localObject2 = new HashSet();
    Object localObject1 = c;
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      localObject3 = localObject1[i];
      if (TextUtils.isEmpty(d))
      {
        s().c().a("null or empty param name in filter. event", b);
        return null;
      }
      ((Set)localObject2).add(d);
      i += 1;
    }
    localObject1 = new a();
    Object localObject3 = a;
    j = localObject3.length;
    i = 0;
    Object localObject4;
    if (i < j)
    {
      localObject4 = localObject3[i];
      if (((Set)localObject2).contains(a))
      {
        if (c == null) {
          break label219;
        }
        ((Map)localObject1).put(a, c);
      }
      for (;;)
      {
        i += 1;
        break;
        label219:
        if (d != null)
        {
          ((Map)localObject1).put(a, d);
        }
        else
        {
          if (b == null) {
            break label277;
          }
          ((Map)localObject1).put(a, b);
        }
      }
      label277:
      s().c().a("Unknown value for param. event, param", b, a);
      return null;
    }
    paramb = c;
    j = paramb.length;
    i = 0;
    while (i < j)
    {
      localObject2 = paramb[i];
      localObject3 = d;
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        s().c().a("Event has empty param name. event", b);
        return null;
      }
      localObject4 = ((Map)localObject1).get(localObject3);
      if ((localObject4 instanceof Long))
      {
        if (b == null)
        {
          s().c().a("No number filter for long param. event, param", b, localObject3);
          return null;
        }
        localObject2 = new ac(b).a(((Long)localObject4).longValue());
        if (localObject2 == null) {
          return null;
        }
        if (!((Boolean)localObject2).booleanValue()) {
          return Boolean.valueOf(false);
        }
      }
      else if ((localObject4 instanceof Float))
      {
        if (b == null)
        {
          s().c().a("No number filter for float param. event, param", b, localObject3);
          return null;
        }
        localObject2 = new ac(b).a(((Float)localObject4).floatValue());
        if (localObject2 == null) {
          return null;
        }
        if (!((Boolean)localObject2).booleanValue()) {
          return Boolean.valueOf(false);
        }
      }
      else if ((localObject4 instanceof String))
      {
        if (a == null)
        {
          s().c().a("No string filter for String param. event, param", b, localObject3);
          return null;
        }
        localObject2 = new f(a).a((String)localObject4);
        if (localObject2 == null) {
          return null;
        }
        if (!((Boolean)localObject2).booleanValue()) {
          return Boolean.valueOf(false);
        }
      }
      else
      {
        if (localObject4 == null)
        {
          s().z().a("Missing param for filter. event, param", b, localObject3);
          return Boolean.valueOf(false);
        }
        s().c().a("Unknown param type. event, param", b, localObject3);
        return null;
      }
      i += 1;
    }
    return Boolean.valueOf(true);
  }
  
  private Boolean a(ky.e parame, la.g paramg)
  {
    parame = c;
    if (parame == null)
    {
      s().c().a("Missing property filter. property", b);
      return null;
    }
    if (d != null)
    {
      if (b == null)
      {
        s().c().a("No number filter for long property. property", b);
        return null;
      }
      return new ac(b).a(d.longValue());
    }
    if (e != null)
    {
      if (b == null)
      {
        s().c().a("No number filter for float property. property", b);
        return null;
      }
      return new ac(b).a(e.floatValue());
    }
    if (c != null)
    {
      if (a == null)
      {
        if (b == null)
        {
          s().c().a("No string or number filter defined. property", b);
          return null;
        }
        ac localac = new ac(b);
        if (!b.b.booleanValue())
        {
          if (a(c)) {
            try
            {
              parame = localac.a(Long.parseLong(c));
              return parame;
            }
            catch (NumberFormatException parame)
            {
              s().c().a("User property value exceeded Long value range. property, value", b, c);
              return null;
            }
          }
          s().c().a("Invalid user property value for Long number filter. property, value", b, c);
          return null;
        }
        if (b(c)) {
          try
          {
            float f = Float.parseFloat(c);
            if (!Float.isInfinite(f)) {
              return localac.a(f);
            }
            s().c().a("User property value exceeded Float value range. property, value", b, c);
            return null;
          }
          catch (NumberFormatException parame)
          {
            s().c().a("User property value exceeded Float value range. property, value", b, c);
            return null;
          }
        }
        s().c().a("Invalid user property value for Float number filter. property, value", b, c);
        return null;
      }
      return new f(a).a(c);
    }
    s().c().a("User property has no value, property", b);
    return null;
  }
  
  protected void a() {}
  
  void a(String paramString, ky.a[] paramArrayOfa)
  {
    n().a(paramString, paramArrayOfa);
  }
  
  boolean a(String paramString)
  {
    return Pattern.matches("[+-]?[0-9]+", paramString);
  }
  
  la.a[] a(String paramString, la.b[] paramArrayOfb, la.g[] paramArrayOfg)
  {
    zzx.zzcM(paramString);
    HashSet localHashSet = new HashSet();
    a locala1 = new a();
    a locala2 = new a();
    a locala3 = new a();
    Object localObject6;
    int k;
    int i;
    Object localObject7;
    Object localObject1;
    long l;
    Object localObject2;
    if (paramArrayOfb != null)
    {
      localObject6 = new a();
      k = paramArrayOfb.length;
      i = 0;
      if (i < k)
      {
        localObject7 = paramArrayOfb[i];
        localObject1 = n().a(paramString, b);
        if (localObject1 == null)
        {
          s().c().a("Event aggregate wasn't created during raw event logging. event", b);
          localObject1 = new s(paramString, b, 1L, 1L, c.longValue());
          n().a((s)localObject1);
          l = c;
          localObject1 = (Map)((Map)localObject6).get(b);
          if (localObject1 != null) {
            break label1816;
          }
          localObject2 = n().d(paramString, b);
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = new a();
          }
          ((Map)localObject6).put(b, localObject1);
        }
      }
    }
    label264:
    label845:
    label994:
    label1262:
    label1589:
    label1804:
    label1807:
    label1810:
    label1813:
    label1816:
    for (;;)
    {
      s().z().a("Found audiences. event, audience count", b, Integer.valueOf(((Map)localObject1).size()));
      Object localObject8 = ((Map)localObject1).keySet().iterator();
      int m;
      Object localObject4;
      for (;;)
      {
        if (((Iterator)localObject8).hasNext())
        {
          m = ((Integer)((Iterator)localObject8).next()).intValue();
          if (localHashSet.contains(Integer.valueOf(m)))
          {
            s().z().a("Skipping failed audience ID", Integer.valueOf(m));
            continue;
            localObject1 = ((s)localObject1).a();
            break;
          }
          localObject4 = (la.a)locala1.get(Integer.valueOf(m));
          if (localObject4 != null) {
            break label1813;
          }
          localObject4 = new la.a();
          locala1.put(Integer.valueOf(m), localObject4);
          d = Boolean.valueOf(false);
        }
      }
      for (;;)
      {
        Object localObject9 = (List)((Map)localObject1).get(Integer.valueOf(m));
        Object localObject5 = (BitSet)locala2.get(Integer.valueOf(m));
        Object localObject3 = (BitSet)locala3.get(Integer.valueOf(m));
        localObject2 = localObject5;
        if (localObject5 == null)
        {
          localObject2 = new BitSet();
          locala2.put(Integer.valueOf(m), localObject2);
          localObject3 = new BitSet();
          locala3.put(Integer.valueOf(m), localObject3);
        }
        if ((c == null) && (!d.booleanValue()))
        {
          localObject5 = n().c(paramString, m);
          if (localObject5 == null) {
            d = Boolean.valueOf(true);
          }
        }
        else
        {
          localObject4 = ((List)localObject9).iterator();
        }
        int j;
        for (;;)
        {
          if (!((Iterator)localObject4).hasNext()) {
            break label845;
          }
          localObject5 = (ky.b)((Iterator)localObject4).next();
          if (s().a(2))
          {
            s().z().a("Evaluating filter. audience, filter, event", Integer.valueOf(m), a, b);
            s().z().a("Filter definition", localObject5);
          }
          if (a.intValue() > 256)
          {
            s().c().a("Invalid event filter ID > 256. id", a);
            continue;
            c = ((la.f)localObject5);
            j = 0;
            while (j < b.length * 64)
            {
              if (k.a(b, j))
              {
                s().z().a("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(m), Integer.valueOf(j));
                ((BitSet)localObject2).set(j);
                ((BitSet)localObject3).set(j);
              }
              j += 1;
            }
            break;
          }
          if (!((BitSet)localObject3).get(a.intValue()))
          {
            localObject9 = a((ky.b)localObject5, (la.b)localObject7, l);
            s().z().a("Event filter result", localObject9);
            if (localObject9 == null)
            {
              localHashSet.add(Integer.valueOf(m));
            }
            else
            {
              ((BitSet)localObject3).set(a.intValue());
              if (((Boolean)localObject9).booleanValue()) {
                ((BitSet)localObject2).set(a.intValue());
              }
            }
          }
        }
        break label264;
        i += 1;
        break;
        if (paramArrayOfg != null)
        {
          localObject5 = new a();
          k = paramArrayOfg.length;
          i = 0;
          if (i < k)
          {
            localObject6 = paramArrayOfg[i];
            paramArrayOfb = (Map)((Map)localObject5).get(b);
            if (paramArrayOfb != null) {
              break label1810;
            }
            localObject1 = n().e(paramString, b);
            paramArrayOfb = (la.b[])localObject1;
            if (localObject1 == null) {
              paramArrayOfb = new a();
            }
            ((Map)localObject5).put(b, paramArrayOfb);
          }
        }
        for (;;)
        {
          s().z().a("Found audiences. property, audience count", b, Integer.valueOf(paramArrayOfb.size()));
          localObject7 = paramArrayOfb.keySet().iterator();
          while (((Iterator)localObject7).hasNext())
          {
            m = ((Integer)((Iterator)localObject7).next()).intValue();
            if (localHashSet.contains(Integer.valueOf(m)))
            {
              s().z().a("Skipping failed audience ID", Integer.valueOf(m));
            }
            else
            {
              localObject3 = (la.a)locala1.get(Integer.valueOf(m));
              if (localObject3 != null) {
                break label1807;
              }
              localObject3 = new la.a();
              locala1.put(Integer.valueOf(m), localObject3);
              d = Boolean.valueOf(false);
            }
          }
          for (;;)
          {
            localObject8 = (List)paramArrayOfb.get(Integer.valueOf(m));
            localObject4 = (BitSet)locala2.get(Integer.valueOf(m));
            localObject2 = (BitSet)locala3.get(Integer.valueOf(m));
            localObject1 = localObject4;
            if (localObject4 == null)
            {
              localObject1 = new BitSet();
              locala2.put(Integer.valueOf(m), localObject1);
              localObject2 = new BitSet();
              locala3.put(Integer.valueOf(m), localObject2);
            }
            if ((c == null) && (!d.booleanValue()))
            {
              localObject4 = n().c(paramString, m);
              if (localObject4 == null) {
                d = Boolean.valueOf(true);
              }
            }
            else
            {
              localObject3 = ((List)localObject8).iterator();
            }
            for (;;)
            {
              if (!((Iterator)localObject3).hasNext()) {
                break label1589;
              }
              localObject4 = (ky.e)((Iterator)localObject3).next();
              if (s().a(2))
              {
                s().z().a("Evaluating filter. audience, filter, property", Integer.valueOf(m), a, b);
                s().z().a("Filter definition", localObject4);
              }
              if ((a == null) || (a.intValue() > 256))
              {
                s().c().a("Invalid property filter ID. id", String.valueOf(a));
                localHashSet.add(Integer.valueOf(m));
                break;
                c = ((la.f)localObject4);
                j = 0;
                while (j < b.length * 64)
                {
                  if (k.a(b, j))
                  {
                    ((BitSet)localObject1).set(j);
                    ((BitSet)localObject2).set(j);
                  }
                  j += 1;
                }
                break label1262;
              }
              if (((BitSet)localObject2).get(a.intValue()))
              {
                s().z().a("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(m), a);
              }
              else
              {
                localObject8 = a((ky.e)localObject4, (la.g)localObject6);
                s().z().a("Property filter result", localObject8);
                if (localObject8 == null)
                {
                  localHashSet.add(Integer.valueOf(m));
                }
                else
                {
                  ((BitSet)localObject2).set(a.intValue());
                  if (((Boolean)localObject8).booleanValue()) {
                    ((BitSet)localObject1).set(a.intValue());
                  }
                }
              }
            }
            break label994;
            i += 1;
            break;
            paramArrayOfg = new la.a[locala2.size()];
            localObject1 = locala2.keySet().iterator();
            i = 0;
            while (((Iterator)localObject1).hasNext())
            {
              j = ((Integer)((Iterator)localObject1).next()).intValue();
              if (!localHashSet.contains(Integer.valueOf(j)))
              {
                paramArrayOfb = (la.a)locala1.get(Integer.valueOf(j));
                if (paramArrayOfb != null) {
                  break label1804;
                }
                paramArrayOfb = new la.a();
              }
            }
            for (;;)
            {
              paramArrayOfg[i] = paramArrayOfb;
              a = Integer.valueOf(j);
              b = new la.f();
              b.b = k.a((BitSet)locala2.get(Integer.valueOf(j)));
              b.a = k.a((BitSet)locala3.get(Integer.valueOf(j)));
              n().a(paramString, j, b);
              i += 1;
              break;
              return (la.a[])Arrays.copyOf(paramArrayOfg, i);
            }
          }
        }
      }
    }
  }
  
  boolean b(String paramString)
  {
    return Pattern.matches("[+-]?(([0-9]+\\.?)|([0-9]*\\.[0-9]+))", paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */