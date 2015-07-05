package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class ko
  implements SafeParcelable, kr.b<String, Integer>
{
  public static final kp CREATOR = new kp();
  private final int CK;
  private final HashMap<String, Integer> NG;
  private final HashMap<Integer, String> NH;
  private final ArrayList<ko.a> NI;
  
  public ko()
  {
    CK = 1;
    NG = new HashMap();
    NH = new HashMap();
    NI = null;
  }
  
  ko(int paramInt, ArrayList<ko.a> paramArrayList)
  {
    CK = paramInt;
    NG = new HashMap();
    NH = new HashMap();
    NI = null;
    b(paramArrayList);
  }
  
  private void b(ArrayList<ko.a> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      ko.a locala = (ko.a)paramArrayList.next();
      h(NJ, NK);
    }
  }
  
  public String a(Integer paramInteger)
  {
    String str = (String)NH.get(paramInteger);
    paramInteger = str;
    if (str == null)
    {
      paramInteger = str;
      if (NG.containsKey("gms_unknown")) {
        paramInteger = "gms_unknown";
      }
    }
    return paramInteger;
  }
  
  public int describeContents()
  {
    kp localkp = CREATOR;
    return 0;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public ko h(String paramString, int paramInt)
  {
    NG.put(paramString, Integer.valueOf(paramInt));
    NH.put(Integer.valueOf(paramInt), paramString);
    return this;
  }
  
  ArrayList<ko.a> hH()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = NG.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new ko.a(str, ((Integer)NG.get(str)).intValue()));
    }
    return localArrayList;
  }
  
  public int hI()
  {
    return 7;
  }
  
  public int hJ()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kp localkp = CREATOR;
    kp.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */