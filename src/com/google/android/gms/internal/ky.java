package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class ky
  extends kr
  implements SafeParcelable
{
  public static final kz CREATOR = new kz();
  private final int CK;
  private final kv NT;
  private final Parcel Oa;
  private final int Ob;
  private int Oc;
  private int Od;
  private final String mClassName;
  
  ky(int paramInt, Parcel paramParcel, kv paramkv)
  {
    CK = paramInt;
    Oa = ((Parcel)jx.i(paramParcel));
    Ob = 2;
    NT = paramkv;
    if (NT == null) {}
    for (mClassName = null;; mClassName = NT.ia())
    {
      Oc = 2;
      return;
    }
  }
  
  private ky(SafeParcelable paramSafeParcelable, kv paramkv, String paramString)
  {
    CK = 1;
    Oa = Parcel.obtain();
    paramSafeParcelable.writeToParcel(Oa, 0);
    Ob = 1;
    NT = ((kv)jx.i(paramkv));
    mClassName = ((String)jx.i(paramString));
    Oc = 2;
  }
  
  public static <T extends kr,  extends SafeParcelable> ky a(T paramT)
  {
    String str = paramT.getClass().getCanonicalName();
    kv localkv = b(paramT);
    return new ky((SafeParcelable)paramT, localkv, str);
  }
  
  private static void a(kv paramkv, kr paramkr)
  {
    Object localObject = paramkr.getClass();
    if (!paramkv.b((Class)localObject))
    {
      HashMap localHashMap = paramkr.hK();
      paramkv.a((Class)localObject, paramkr.hK());
      localObject = localHashMap.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramkr = (kr.a)localHashMap.get((String)((Iterator)localObject).next());
        Class localClass = paramkr.hS();
        if (localClass != null) {
          try
          {
            a(paramkv, (kr)localClass.newInstance());
          }
          catch (InstantiationException paramkv)
          {
            throw new IllegalStateException("Could not instantiate an object of type " + paramkr.hS().getCanonicalName(), paramkv);
          }
          catch (IllegalAccessException paramkv)
          {
            throw new IllegalStateException("Could not access object of type " + paramkr.hS().getCanonicalName(), paramkv);
          }
        }
      }
    }
  }
  
  private void a(StringBuilder paramStringBuilder, int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown type = " + paramInt);
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      paramStringBuilder.append(paramObject);
      return;
    case 7: 
      paramStringBuilder.append("\"").append(li.bh(paramObject.toString())).append("\"");
      return;
    case 8: 
      paramStringBuilder.append("\"").append(lb.d((byte[])paramObject)).append("\"");
      return;
    case 9: 
      paramStringBuilder.append("\"").append(lb.e((byte[])paramObject));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      lj.a(paramStringBuilder, (HashMap)paramObject);
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void a(StringBuilder paramStringBuilder, kr.a<?, ?> parama, Parcel paramParcel, int paramInt)
  {
    switch (parama.hJ())
    {
    default: 
      throw new IllegalArgumentException("Unknown field out type = " + parama.hJ());
    case 0: 
      b(paramStringBuilder, parama, a(parama, Integer.valueOf(a.g(paramParcel, paramInt))));
      return;
    case 1: 
      b(paramStringBuilder, parama, a(parama, a.k(paramParcel, paramInt)));
      return;
    case 2: 
      b(paramStringBuilder, parama, a(parama, Long.valueOf(a.i(paramParcel, paramInt))));
      return;
    case 3: 
      b(paramStringBuilder, parama, a(parama, Float.valueOf(a.l(paramParcel, paramInt))));
      return;
    case 4: 
      b(paramStringBuilder, parama, a(parama, Double.valueOf(a.m(paramParcel, paramInt))));
      return;
    case 5: 
      b(paramStringBuilder, parama, a(parama, a.n(paramParcel, paramInt)));
      return;
    case 6: 
      b(paramStringBuilder, parama, a(parama, Boolean.valueOf(a.c(paramParcel, paramInt))));
      return;
    case 7: 
      b(paramStringBuilder, parama, a(parama, a.o(paramParcel, paramInt)));
      return;
    case 8: 
    case 9: 
      b(paramStringBuilder, parama, a(parama, a.r(paramParcel, paramInt)));
      return;
    case 10: 
      b(paramStringBuilder, parama, a(parama, g(a.q(paramParcel, paramInt))));
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString, kr.a<?, ?> parama, Parcel paramParcel, int paramInt)
  {
    paramStringBuilder.append("\"").append(paramString).append("\":");
    if (parama.hU())
    {
      a(paramStringBuilder, parama, paramParcel, paramInt);
      return;
    }
    b(paramStringBuilder, parama, paramParcel, paramInt);
  }
  
  private void a(StringBuilder paramStringBuilder, HashMap<String, kr.a<?, ?>> paramHashMap, Parcel paramParcel)
  {
    paramHashMap = b(paramHashMap);
    paramStringBuilder.append('{');
    int j = a.G(paramParcel);
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      Map.Entry localEntry = (Map.Entry)paramHashMap.get(Integer.valueOf(a.aH(k)));
      if (localEntry != null)
      {
        if (i != 0) {
          paramStringBuilder.append(",");
        }
        a(paramStringBuilder, (String)localEntry.getKey(), (kr.a)localEntry.getValue(), paramParcel, k);
        i = 1;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    paramStringBuilder.append('}');
  }
  
  private static kv b(kr paramkr)
  {
    kv localkv = new kv(paramkr.getClass());
    a(localkv, paramkr);
    localkv.hY();
    localkv.hX();
    return localkv;
  }
  
  private static HashMap<Integer, Map.Entry<String, kr.a<?, ?>>> b(HashMap<String, kr.a<?, ?>> paramHashMap)
  {
    HashMap localHashMap = new HashMap();
    paramHashMap = paramHashMap.entrySet().iterator();
    while (paramHashMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramHashMap.next();
      localHashMap.put(Integer.valueOf(((kr.a)localEntry.getValue()).hR()), localEntry);
    }
    return localHashMap;
  }
  
  private void b(StringBuilder paramStringBuilder, kr.a<?, ?> parama, Parcel paramParcel, int paramInt)
  {
    if (parama.hP())
    {
      paramStringBuilder.append("[");
      switch (parama.hJ())
      {
      default: 
        throw new IllegalStateException("Unknown field type out.");
      case 0: 
        la.a(paramStringBuilder, a.u(paramParcel, paramInt));
      }
      for (;;)
      {
        paramStringBuilder.append("]");
        return;
        la.a(paramStringBuilder, a.w(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.v(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.x(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.y(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.z(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.t(paramParcel, paramInt));
        continue;
        la.a(paramStringBuilder, a.A(paramParcel, paramInt));
        continue;
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        paramParcel = a.E(paramParcel, paramInt);
        int i = paramParcel.length;
        paramInt = 0;
        while (paramInt < i)
        {
          if (paramInt > 0) {
            paramStringBuilder.append(",");
          }
          paramParcel[paramInt].setDataPosition(0);
          a(paramStringBuilder, parama.hW(), paramParcel[paramInt]);
          paramInt += 1;
        }
      }
    }
    switch (parama.hJ())
    {
    default: 
      throw new IllegalStateException("Unknown field type out");
    case 0: 
      paramStringBuilder.append(a.g(paramParcel, paramInt));
      return;
    case 1: 
      paramStringBuilder.append(a.k(paramParcel, paramInt));
      return;
    case 2: 
      paramStringBuilder.append(a.i(paramParcel, paramInt));
      return;
    case 3: 
      paramStringBuilder.append(a.l(paramParcel, paramInt));
      return;
    case 4: 
      paramStringBuilder.append(a.m(paramParcel, paramInt));
      return;
    case 5: 
      paramStringBuilder.append(a.n(paramParcel, paramInt));
      return;
    case 6: 
      paramStringBuilder.append(a.c(paramParcel, paramInt));
      return;
    case 7: 
      parama = a.o(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(li.bh(parama)).append("\"");
      return;
    case 8: 
      parama = a.r(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(lb.d(parama)).append("\"");
      return;
    case 9: 
      parama = a.r(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(lb.e(parama));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      parama = a.q(paramParcel, paramInt);
      paramParcel = parama.keySet();
      paramParcel.size();
      paramStringBuilder.append("{");
      paramParcel = paramParcel.iterator();
      for (paramInt = 1; paramParcel.hasNext(); paramInt = 0)
      {
        String str = (String)paramParcel.next();
        if (paramInt == 0) {
          paramStringBuilder.append(",");
        }
        paramStringBuilder.append("\"").append(str).append("\"");
        paramStringBuilder.append(":");
        paramStringBuilder.append("\"").append(li.bh(parama.getString(str))).append("\"");
      }
      paramStringBuilder.append("}");
      return;
    }
    paramParcel = a.D(paramParcel, paramInt);
    paramParcel.setDataPosition(0);
    a(paramStringBuilder, parama.hW(), paramParcel);
  }
  
  private void b(StringBuilder paramStringBuilder, kr.a<?, ?> parama, Object paramObject)
  {
    if (parama.hO())
    {
      b(paramStringBuilder, parama, (ArrayList)paramObject);
      return;
    }
    a(paramStringBuilder, parama.hI(), paramObject);
  }
  
  private void b(StringBuilder paramStringBuilder, kr.a<?, ?> parama, ArrayList<?> paramArrayList)
  {
    paramStringBuilder.append("[");
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (i != 0) {
        paramStringBuilder.append(",");
      }
      a(paramStringBuilder, parama.hI(), paramArrayList.get(i));
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  public static HashMap<String, String> g(Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.getString(str));
    }
    return localHashMap;
  }
  
  protected Object bc(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  protected boolean bd(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  public int describeContents()
  {
    kz localkz = CREATOR;
    return 0;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public HashMap<String, kr.a<?, ?>> hK()
  {
    if (NT == null) {
      return null;
    }
    return NT.bg(mClassName);
  }
  
  public Parcel ic()
  {
    switch (Oc)
    {
    }
    for (;;)
    {
      return Oa;
      Od = b.H(Oa);
      b.H(Oa, Od);
      Oc = 2;
      continue;
      b.H(Oa, Od);
      Oc = 2;
    }
  }
  
  kv id()
  {
    switch (Ob)
    {
    default: 
      throw new IllegalStateException("Invalid creation type: " + Ob);
    case 0: 
      return null;
    case 1: 
      return NT;
    }
    return NT;
  }
  
  public String toString()
  {
    jx.b(NT, "Cannot convert to JSON on client side.");
    Parcel localParcel = ic();
    localParcel.setDataPosition(0);
    StringBuilder localStringBuilder = new StringBuilder(100);
    a(localStringBuilder, NT.bg(mClassName), localParcel);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kz localkz = CREATOR;
    kz.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */