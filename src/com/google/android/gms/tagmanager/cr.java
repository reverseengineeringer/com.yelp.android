package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c.b;
import com.google.android.gms.internal.c.e;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.g;
import com.google.android.gms.internal.c.h;
import com.google.android.gms.internal.d.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class cr
{
  private static d.a a(int paramInt, c.f paramf, d.a[] paramArrayOfa, Set<Integer> paramSet)
  {
    int k = 0;
    int m = 0;
    int j = 0;
    if (paramSet.contains(Integer.valueOf(paramInt))) {
      cN("Value cycle detected.  Current value reference: " + paramInt + "." + "  Previous value references: " + paramSet + ".");
    }
    d.a locala1 = (d.a)a(fG, paramInt, "values");
    if (paramArrayOfa[paramInt] != null) {
      return paramArrayOfa[paramInt];
    }
    Object localObject = null;
    paramSet.add(Integer.valueOf(paramInt));
    switch (type)
    {
    }
    for (;;)
    {
      if (localObject == null) {
        cN("Invalid value: " + locala1);
      }
      paramArrayOfa[paramInt] = localObject;
      paramSet.remove(Integer.valueOf(paramInt));
      return (d.a)localObject;
      localObject = h(locala1);
      d.a locala2 = g(locala1);
      gw = new d.a[gh.length];
      int[] arrayOfInt = gh;
      k = arrayOfInt.length;
      int i = 0;
      for (;;)
      {
        localObject = locala2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        gw[i] = a(m, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      locala2 = g(locala1);
      localObject = h(locala1);
      if (gi.length != gj.length) {
        cN("Uneven map keys (" + gi.length + ") and map values (" + gj.length + ")");
      }
      gx = new d.a[gi.length];
      gy = new d.a[gi.length];
      arrayOfInt = gi;
      m = arrayOfInt.length;
      j = 0;
      i = 0;
      while (j < m)
      {
        int n = arrayOfInt[j];
        gx[i] = a(n, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      arrayOfInt = gj;
      m = arrayOfInt.length;
      i = 0;
      j = k;
      for (;;)
      {
        localObject = locala2;
        if (j >= m) {
          break;
        }
        k = arrayOfInt[j];
        gy[i] = a(k, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      localObject = g(locala1);
      gz = di.j(a(hgm, paramf, paramArrayOfa, paramSet));
      continue;
      locala2 = g(locala1);
      localObject = h(locala1);
      gD = new d.a[gl.length];
      arrayOfInt = gl;
      k = arrayOfInt.length;
      i = 0;
      j = m;
      for (;;)
      {
        localObject = locala2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        gD[i] = a(m, paramf, paramArrayOfa, paramSet);
        j += 1;
        i += 1;
      }
      localObject = locala1;
    }
  }
  
  private static cr.a a(c.b paramb, c.f paramf, d.a[] paramArrayOfa, int paramInt)
  {
    cr.b localb = cr.a.qk();
    paramb = fq;
    int i = paramb.length;
    paramInt = 0;
    if (paramInt < i)
    {
      int j = paramb[paramInt];
      Object localObject = (c.e)a(fH, Integer.valueOf(j).intValue(), "properties");
      String str = (String)a(fF, key, "keys");
      localObject = (d.a)a(paramArrayOfa, value, "values");
      if (b.ec.toString().equals(str)) {
        localb.i((d.a)localObject);
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localb.b(str, (d.a)localObject);
      }
    }
    return localb.qn();
  }
  
  private static cr.e a(c.g paramg, List<cr.a> paramList1, List<cr.a> paramList2, List<cr.a> paramList3, c.f paramf)
  {
    cr.f localf = cr.e.qs();
    int[] arrayOfInt = fV;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      localf.b((cr.a)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    arrayOfInt = fW;
    j = arrayOfInt.length;
    i = 0;
    while (i < j)
    {
      localf.c((cr.a)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    paramList3 = fX;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localf.d((cr.a)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList3 = fZ;
    j = paramList3.length;
    i = 0;
    int k;
    while (i < j)
    {
      k = paramList3[i];
      localf.cP(fG[Integer.valueOf(k).intValue()].gv);
      i += 1;
    }
    paramList3 = fY;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localf.e((cr.a)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList1 = ga;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localf.cQ(fG[Integer.valueOf(k).intValue()].gv);
      i += 1;
    }
    paramList1 = gb;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localf.f((cr.a)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramList1 = gd;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localf.cR(fG[Integer.valueOf(k).intValue()].gv);
      i += 1;
    }
    paramList1 = gc;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localf.g((cr.a)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramg = ge;
    j = paramg.length;
    i = 0;
    while (i < j)
    {
      k = paramg[i];
      localf.cS(fG[Integer.valueOf(k).intValue()].gv);
      i += 1;
    }
    return localf.qD();
  }
  
  private static <T> T a(T[] paramArrayOfT, int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      cN("Index out of bounds detected: " + paramInt + " in " + paramString);
    }
    return paramArrayOfT[paramInt];
  }
  
  public static cr.c b(c.f paramf)
  {
    int j = 0;
    Object localObject = new d.a[fG.length];
    int i = 0;
    while (i < fG.length)
    {
      a(i, paramf, (d.a[])localObject, new HashSet(0));
      i += 1;
    }
    cr.d locald = cr.c.qo();
    ArrayList localArrayList1 = new ArrayList();
    i = 0;
    while (i < fJ.length)
    {
      localArrayList1.add(a(fJ[i], paramf, (d.a[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList2 = new ArrayList();
    i = 0;
    while (i < fK.length)
    {
      localArrayList2.add(a(fK[i], paramf, (d.a[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList3 = new ArrayList();
    i = 0;
    while (i < fI.length)
    {
      cr.a locala = a(fI[i], paramf, (d.a[])localObject, i);
      locald.a(locala);
      localArrayList3.add(locala);
      i += 1;
    }
    localObject = fL;
    int k = localObject.length;
    i = j;
    while (i < k)
    {
      locald.a(a(localObject[i], localArrayList1, localArrayList3, localArrayList2, paramf));
      i += 1;
    }
    locald.cO(version);
    locald.fO(fT);
    return locald.qr();
  }
  
  public static void b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static void cN(String paramString)
  {
    bh.T(paramString);
    throw new cr.g(paramString);
  }
  
  public static d.a g(d.a parama)
  {
    d.a locala = new d.a();
    type = type;
    gE = ((int[])gE.clone());
    if (gF) {
      gF = gF;
    }
    return locala;
  }
  
  private static c.h h(d.a parama)
  {
    if ((c.h)parama.a(c.h.gf) == null) {
      cN("Expected a ServingValue and didn't get one. Value is: " + parama);
    }
    return (c.h)parama.a(c.h.gf);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */