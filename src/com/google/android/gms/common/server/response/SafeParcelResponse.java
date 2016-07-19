package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jq;
import com.google.android.gms.internal.jr;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.kd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SafeParcelResponse
  extends FastJsonResponse
  implements SafeParcelable
{
  public static final zze CREATOR = new zze();
  private final String mClassName;
  private final int mVersionCode;
  private final FieldMappingDictionary zzamT;
  private final Parcel zzana;
  private final int zzanb;
  private int zzanc;
  private int zzand;
  
  SafeParcelResponse(int paramInt, Parcel paramParcel, FieldMappingDictionary paramFieldMappingDictionary)
  {
    mVersionCode = paramInt;
    zzana = ((Parcel)zzx.zzz(paramParcel));
    zzanb = 2;
    zzamT = paramFieldMappingDictionary;
    if (zzamT == null) {}
    for (mClassName = null;; mClassName = zzamT.zzrB())
    {
      zzanc = 2;
      return;
    }
  }
  
  private SafeParcelResponse(SafeParcelable paramSafeParcelable, FieldMappingDictionary paramFieldMappingDictionary, String paramString)
  {
    mVersionCode = 1;
    zzana = Parcel.obtain();
    paramSafeParcelable.writeToParcel(zzana, 0);
    zzanb = 1;
    zzamT = ((FieldMappingDictionary)zzx.zzz(paramFieldMappingDictionary));
    mClassName = ((String)zzx.zzz(paramString));
    zzanc = 2;
  }
  
  private static HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> zzN(Map<String, FastJsonResponse.Field<?, ?>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localHashMap.put(Integer.valueOf(((FastJsonResponse.Field)localEntry.getValue()).zzrs()), localEntry);
    }
    return localHashMap;
  }
  
  public static <T extends FastJsonResponse,  extends SafeParcelable> SafeParcelResponse zza(T paramT)
  {
    String str = paramT.getClass().getCanonicalName();
    FieldMappingDictionary localFieldMappingDictionary = zzb(paramT);
    return new SafeParcelResponse((SafeParcelable)paramT, localFieldMappingDictionary, str);
  }
  
  private static void zza(FieldMappingDictionary paramFieldMappingDictionary, FastJsonResponse paramFastJsonResponse)
  {
    Object localObject = paramFastJsonResponse.getClass();
    if (!paramFieldMappingDictionary.zzb((Class)localObject))
    {
      Map localMap = paramFastJsonResponse.zzrl();
      paramFieldMappingDictionary.zza((Class)localObject, localMap);
      localObject = localMap.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramFastJsonResponse = (FastJsonResponse.Field)localMap.get((String)((Iterator)localObject).next());
        Class localClass = paramFastJsonResponse.zzrt();
        if (localClass != null) {
          try
          {
            zza(paramFieldMappingDictionary, (FastJsonResponse)localClass.newInstance());
          }
          catch (InstantiationException paramFieldMappingDictionary)
          {
            throw new IllegalStateException("Could not instantiate an object of type " + paramFastJsonResponse.zzrt().getCanonicalName(), paramFieldMappingDictionary);
          }
          catch (IllegalAccessException paramFieldMappingDictionary)
          {
            throw new IllegalStateException("Could not access object of type " + paramFastJsonResponse.zzrt().getCanonicalName(), paramFieldMappingDictionary);
          }
        }
      }
    }
  }
  
  private void zza(StringBuilder paramStringBuilder, int paramInt, Object paramObject)
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
      paramStringBuilder.append("\"").append(kc.a(paramObject.toString())).append("\"");
      return;
    case 8: 
      paramStringBuilder.append("\"").append(jr.a((byte[])paramObject)).append("\"");
      return;
    case 9: 
      paramStringBuilder.append("\"").append(jr.b((byte[])paramObject));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      kd.a(paramStringBuilder, (HashMap)paramObject);
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void zza(StringBuilder paramStringBuilder, FastJsonResponse.Field<?, ?> paramField, Parcel paramParcel, int paramInt)
  {
    switch (paramField.zzrk())
    {
    default: 
      throw new IllegalArgumentException("Unknown field out type = " + paramField.zzrk());
    case 0: 
      zzb(paramStringBuilder, paramField, zza(paramField, Integer.valueOf(zza.zzg(paramParcel, paramInt))));
      return;
    case 1: 
      zzb(paramStringBuilder, paramField, zza(paramField, zza.zzk(paramParcel, paramInt)));
      return;
    case 2: 
      zzb(paramStringBuilder, paramField, zza(paramField, Long.valueOf(zza.zzi(paramParcel, paramInt))));
      return;
    case 3: 
      zzb(paramStringBuilder, paramField, zza(paramField, Float.valueOf(zza.zzl(paramParcel, paramInt))));
      return;
    case 4: 
      zzb(paramStringBuilder, paramField, zza(paramField, Double.valueOf(zza.zzn(paramParcel, paramInt))));
      return;
    case 5: 
      zzb(paramStringBuilder, paramField, zza(paramField, zza.zzo(paramParcel, paramInt)));
      return;
    case 6: 
      zzb(paramStringBuilder, paramField, zza(paramField, Boolean.valueOf(zza.zzc(paramParcel, paramInt))));
      return;
    case 7: 
      zzb(paramStringBuilder, paramField, zza(paramField, zza.zzp(paramParcel, paramInt)));
      return;
    case 8: 
    case 9: 
      zzb(paramStringBuilder, paramField, zza(paramField, zza.zzs(paramParcel, paramInt)));
      return;
    case 10: 
      zzb(paramStringBuilder, paramField, zza(paramField, zzl(zza.zzr(paramParcel, paramInt))));
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void zza(StringBuilder paramStringBuilder, String paramString, FastJsonResponse.Field<?, ?> paramField, Parcel paramParcel, int paramInt)
  {
    paramStringBuilder.append("\"").append(paramString).append("\":");
    if (paramField.zzrv())
    {
      zza(paramStringBuilder, paramField, paramParcel, paramInt);
      return;
    }
    zzb(paramStringBuilder, paramField, paramParcel, paramInt);
  }
  
  private void zza(StringBuilder paramStringBuilder, Map<String, FastJsonResponse.Field<?, ?>> paramMap, Parcel paramParcel)
  {
    paramMap = zzN(paramMap);
    paramStringBuilder.append('{');
    int j = zza.zzau(paramParcel);
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      Map.Entry localEntry = (Map.Entry)paramMap.get(Integer.valueOf(zza.zzca(k)));
      if (localEntry != null)
      {
        if (i != 0) {
          paramStringBuilder.append(",");
        }
        zza(paramStringBuilder, (String)localEntry.getKey(), (FastJsonResponse.Field)localEntry.getValue(), paramParcel, k);
        i = 1;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    paramStringBuilder.append('}');
  }
  
  private static FieldMappingDictionary zzb(FastJsonResponse paramFastJsonResponse)
  {
    FieldMappingDictionary localFieldMappingDictionary = new FieldMappingDictionary(paramFastJsonResponse.getClass());
    zza(localFieldMappingDictionary, paramFastJsonResponse);
    localFieldMappingDictionary.zzrz();
    localFieldMappingDictionary.zzry();
    return localFieldMappingDictionary;
  }
  
  private void zzb(StringBuilder paramStringBuilder, FastJsonResponse.Field<?, ?> paramField, Parcel paramParcel, int paramInt)
  {
    if (paramField.zzrq())
    {
      paramStringBuilder.append("[");
      switch (paramField.zzrk())
      {
      default: 
        throw new IllegalStateException("Unknown field type out.");
      case 0: 
        jq.a(paramStringBuilder, zza.zzv(paramParcel, paramInt));
      }
      for (;;)
      {
        paramStringBuilder.append("]");
        return;
        jq.a(paramStringBuilder, zza.zzx(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzw(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzy(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzz(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzA(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzu(paramParcel, paramInt));
        continue;
        jq.a(paramStringBuilder, zza.zzB(paramParcel, paramInt));
        continue;
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        paramParcel = zza.zzF(paramParcel, paramInt);
        int i = paramParcel.length;
        paramInt = 0;
        while (paramInt < i)
        {
          if (paramInt > 0) {
            paramStringBuilder.append(",");
          }
          paramParcel[paramInt].setDataPosition(0);
          zza(paramStringBuilder, paramField.zzrx(), paramParcel[paramInt]);
          paramInt += 1;
        }
      }
    }
    switch (paramField.zzrk())
    {
    default: 
      throw new IllegalStateException("Unknown field type out");
    case 0: 
      paramStringBuilder.append(zza.zzg(paramParcel, paramInt));
      return;
    case 1: 
      paramStringBuilder.append(zza.zzk(paramParcel, paramInt));
      return;
    case 2: 
      paramStringBuilder.append(zza.zzi(paramParcel, paramInt));
      return;
    case 3: 
      paramStringBuilder.append(zza.zzl(paramParcel, paramInt));
      return;
    case 4: 
      paramStringBuilder.append(zza.zzn(paramParcel, paramInt));
      return;
    case 5: 
      paramStringBuilder.append(zza.zzo(paramParcel, paramInt));
      return;
    case 6: 
      paramStringBuilder.append(zza.zzc(paramParcel, paramInt));
      return;
    case 7: 
      paramField = zza.zzp(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(kc.a(paramField)).append("\"");
      return;
    case 8: 
      paramField = zza.zzs(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(jr.a(paramField)).append("\"");
      return;
    case 9: 
      paramField = zza.zzs(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(jr.b(paramField));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      paramField = zza.zzr(paramParcel, paramInt);
      paramParcel = paramField.keySet();
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
        paramStringBuilder.append("\"").append(kc.a(paramField.getString(str))).append("\"");
      }
      paramStringBuilder.append("}");
      return;
    }
    paramParcel = zza.zzE(paramParcel, paramInt);
    paramParcel.setDataPosition(0);
    zza(paramStringBuilder, paramField.zzrx(), paramParcel);
  }
  
  private void zzb(StringBuilder paramStringBuilder, FastJsonResponse.Field<?, ?> paramField, Object paramObject)
  {
    if (paramField.zzrp())
    {
      zzb(paramStringBuilder, paramField, (ArrayList)paramObject);
      return;
    }
    zza(paramStringBuilder, paramField.zzrj(), paramObject);
  }
  
  private void zzb(StringBuilder paramStringBuilder, FastJsonResponse.Field<?, ?> paramField, ArrayList<?> paramArrayList)
  {
    paramStringBuilder.append("[");
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (i != 0) {
        paramStringBuilder.append(",");
      }
      zza(paramStringBuilder, paramField.zzrj(), paramArrayList.get(i));
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  public static HashMap<String, String> zzl(Bundle paramBundle)
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
  
  public int describeContents()
  {
    zze localzze = CREATOR;
    return 0;
  }
  
  public int getVersionCode()
  {
    return mVersionCode;
  }
  
  public String toString()
  {
    zzx.zzb(zzamT, "Cannot convert to JSON on client side.");
    Parcel localParcel = zzrD();
    localParcel.setDataPosition(0);
    StringBuilder localStringBuilder = new StringBuilder(100);
    zza(localStringBuilder, zzamT.zzcR(mClassName), localParcel);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zze localzze = CREATOR;
    zze.zza(this, paramParcel, paramInt);
  }
  
  protected Object zzcN(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  protected boolean zzcO(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  public Parcel zzrD()
  {
    switch (zzanc)
    {
    }
    for (;;)
    {
      return zzana;
      zzand = zzb.zzav(zzana);
      zzb.zzI(zzana, zzand);
      zzanc = 2;
      continue;
      zzb.zzI(zzana, zzand);
      zzanc = 2;
    }
  }
  
  FieldMappingDictionary zzrE()
  {
    switch (zzanb)
    {
    default: 
      throw new IllegalStateException("Invalid creation type: " + zzanb);
    case 0: 
      return null;
    case 1: 
      return zzamT;
    }
    return zzamT;
  }
  
  public Map<String, FastJsonResponse.Field<?, ?>> zzrl()
  {
    if (zzamT == null) {
      return null;
    }
    return zzamT.zzcR(mClassName);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.server.response.SafeParcelResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */