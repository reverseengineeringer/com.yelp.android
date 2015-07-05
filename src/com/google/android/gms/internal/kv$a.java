package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class kv$a
  implements SafeParcelable
{
  public static final kx CREATOR = new kx();
  final ArrayList<kv.b> NY;
  final String className;
  final int versionCode;
  
  kv$a(int paramInt, String paramString, ArrayList<kv.b> paramArrayList)
  {
    versionCode = paramInt;
    className = paramString;
    NY = paramArrayList;
  }
  
  kv$a(String paramString, HashMap<String, kr.a<?, ?>> paramHashMap)
  {
    versionCode = 1;
    className = paramString;
    NY = a(paramHashMap);
  }
  
  private static ArrayList<kv.b> a(HashMap<String, kr.a<?, ?>> paramHashMap)
  {
    if (paramHashMap == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new kv.b(str, (kr.a)paramHashMap.get(str)));
    }
    return localArrayList;
  }
  
  public int describeContents()
  {
    kx localkx = CREATOR;
    return 0;
  }
  
  HashMap<String, kr.a<?, ?>> ib()
  {
    HashMap localHashMap = new HashMap();
    int j = NY.size();
    int i = 0;
    while (i < j)
    {
      kv.b localb = (kv.b)NY.get(i);
      localHashMap.put(fv, NZ);
      i += 1;
    }
    return localHashMap;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kx localkx = CREATOR;
    kx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */