package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class StringToIntConverter
  implements SafeParcelable, FastJsonResponse.zza<String, Integer>
{
  public static final zzb CREATOR = new zzb();
  private final int mVersionCode;
  private final HashMap<String, Integer> zzamG;
  private final HashMap<Integer, String> zzamH;
  private final ArrayList<Entry> zzamI;
  
  public StringToIntConverter()
  {
    mVersionCode = 1;
    zzamG = new HashMap();
    zzamH = new HashMap();
    zzamI = null;
  }
  
  StringToIntConverter(int paramInt, ArrayList<Entry> paramArrayList)
  {
    mVersionCode = paramInt;
    zzamG = new HashMap();
    zzamH = new HashMap();
    zzamI = null;
    zzd(paramArrayList);
  }
  
  private void zzd(ArrayList<Entry> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      Entry localEntry = (Entry)paramArrayList.next();
      zzh(zzamJ, zzamK);
    }
  }
  
  public int describeContents()
  {
    zzb localzzb = CREATOR;
    return 0;
  }
  
  int getVersionCode()
  {
    return mVersionCode;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb localzzb = CREATOR;
    zzb.zza(this, paramParcel, paramInt);
  }
  
  public String zzb(Integer paramInteger)
  {
    String str = (String)zzamH.get(paramInteger);
    paramInteger = str;
    if (str == null)
    {
      paramInteger = str;
      if (zzamG.containsKey("gms_unknown")) {
        paramInteger = "gms_unknown";
      }
    }
    return paramInteger;
  }
  
  public StringToIntConverter zzh(String paramString, int paramInt)
  {
    zzamG.put(paramString, Integer.valueOf(paramInt));
    zzamH.put(Integer.valueOf(paramInt), paramString);
    return this;
  }
  
  ArrayList<Entry> zzri()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = zzamG.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new Entry(str, ((Integer)zzamG.get(str)).intValue()));
    }
    return localArrayList;
  }
  
  public int zzrj()
  {
    return 7;
  }
  
  public int zzrk()
  {
    return 0;
  }
  
  public static final class Entry
    implements SafeParcelable
  {
    public static final zzc CREATOR = new zzc();
    final int versionCode;
    final String zzamJ;
    final int zzamK;
    
    Entry(int paramInt1, String paramString, int paramInt2)
    {
      versionCode = paramInt1;
      zzamJ = paramString;
      zzamK = paramInt2;
    }
    
    Entry(String paramString, int paramInt)
    {
      versionCode = 1;
      zzamJ = paramString;
      zzamK = paramInt;
    }
    
    public int describeContents()
    {
      zzc localzzc = CREATOR;
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zzc localzzc = CREATOR;
      zzc.zza(this, paramParcel, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.server.converter.StringToIntConverter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */