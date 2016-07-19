package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.internal.jr;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.kd;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class FastJsonResponse
{
  private void zza(StringBuilder paramStringBuilder, Field paramField, Object paramObject)
  {
    if (paramField.zzrj() == 11)
    {
      paramStringBuilder.append(((FastJsonResponse)paramField.zzrt().cast(paramObject)).toString());
      return;
    }
    if (paramField.zzrj() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(kc.a((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }
  
  private void zza(StringBuilder paramStringBuilder, Field paramField, ArrayList<Object> paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0) {
        paramStringBuilder.append(",");
      }
      Object localObject = paramArrayList.get(i);
      if (localObject != null) {
        zza(paramStringBuilder, paramField, localObject);
      }
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  public String toString()
  {
    Map localMap = zzrl();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Field localField = (Field)localMap.get(str);
      if (zza(localField))
      {
        Object localObject = zza(localField, zzb(localField));
        if (localStringBuilder.length() == 0) {
          localStringBuilder.append("{");
        }
        for (;;)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null) {
            break label139;
          }
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label139:
        switch (localField.zzrk())
        {
        default: 
          if (localField.zzrp()) {
            zza(localStringBuilder, localField, (ArrayList)localObject);
          }
          break;
        case 8: 
          localStringBuilder.append("\"").append(jr.a((byte[])localObject)).append("\"");
          break;
        case 9: 
          localStringBuilder.append("\"").append(jr.b((byte[])localObject)).append("\"");
          break;
        case 10: 
          kd.a(localStringBuilder, (HashMap)localObject);
          continue;
          zza(localStringBuilder, localField, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.append("}");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
  
  protected <O, I> I zza(Field<I, O> paramField, Object paramObject)
  {
    Object localObject = paramObject;
    if (Field.zzc(paramField) != null) {
      localObject = paramField.convertBack(paramObject);
    }
    return (I)localObject;
  }
  
  protected boolean zza(Field paramField)
  {
    if (paramField.zzrk() == 11)
    {
      if (paramField.zzrq()) {
        return zzcQ(paramField.zzrr());
      }
      return zzcP(paramField.zzrr());
    }
    return zzcO(paramField.zzrr());
  }
  
  protected Object zzb(Field paramField)
  {
    String str = paramField.zzrr();
    if (paramField.zzrt() != null)
    {
      boolean bool;
      if (zzcN(paramField.zzrr()) == null)
      {
        bool = true;
        zzx.zza(bool, "Concrete field shouldn't be value object: %s", new Object[] { paramField.zzrr() });
        if (!paramField.zzrq()) {
          break label71;
        }
      }
      label71:
      for (paramField = zzrn();; paramField = zzrm())
      {
        if (paramField == null) {
          break label79;
        }
        return paramField.get(str);
        bool = false;
        break;
      }
      try
      {
        label79:
        paramField = "get" + Character.toUpperCase(str.charAt(0)) + str.substring(1);
        paramField = getClass().getMethod(paramField, new Class[0]).invoke(this, new Object[0]);
        return paramField;
      }
      catch (Exception paramField)
      {
        throw new RuntimeException(paramField);
      }
    }
    return zzcN(paramField.zzrr());
  }
  
  protected abstract Object zzcN(String paramString);
  
  protected abstract boolean zzcO(String paramString);
  
  protected boolean zzcP(String paramString)
  {
    throw new UnsupportedOperationException("Concrete types not supported");
  }
  
  protected boolean zzcQ(String paramString)
  {
    throw new UnsupportedOperationException("Concrete type arrays not supported");
  }
  
  public abstract Map<String, Field<?, ?>> zzrl();
  
  public HashMap<String, Object> zzrm()
  {
    return null;
  }
  
  public HashMap<String, Object> zzrn()
  {
    return null;
  }
  
  public static class Field<I, O>
    implements SafeParcelable
  {
    public static final zza CREATOR = new zza();
    private final int mVersionCode;
    protected final int zzamL;
    protected final boolean zzamM;
    protected final int zzamN;
    protected final boolean zzamO;
    protected final String zzamP;
    protected final int zzamQ;
    protected final Class<? extends FastJsonResponse> zzamR;
    protected final String zzamS;
    private FieldMappingDictionary zzamT;
    private FastJsonResponse.zza<I, O> zzamU;
    
    Field(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, ConverterWrapper paramConverterWrapper)
    {
      mVersionCode = paramInt1;
      zzamL = paramInt2;
      zzamM = paramBoolean1;
      zzamN = paramInt3;
      zzamO = paramBoolean2;
      zzamP = paramString1;
      zzamQ = paramInt4;
      if (paramString2 == null) {
        zzamR = null;
      }
      for (zzamS = null; paramConverterWrapper == null; zzamS = paramString2)
      {
        zzamU = null;
        return;
        zzamR = SafeParcelResponse.class;
      }
      zzamU = paramConverterWrapper.zzrh();
    }
    
    protected Field(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends FastJsonResponse> paramClass, FastJsonResponse.zza<I, O> paramzza)
    {
      mVersionCode = 1;
      zzamL = paramInt1;
      zzamM = paramBoolean1;
      zzamN = paramInt2;
      zzamO = paramBoolean2;
      zzamP = paramString;
      zzamQ = paramInt3;
      zzamR = paramClass;
      if (paramClass == null) {}
      for (zzamS = null;; zzamS = paramClass.getCanonicalName())
      {
        zzamU = paramzza;
        return;
      }
    }
    
    public static Field zza(String paramString, int paramInt, FastJsonResponse.zza<?, ?> paramzza, boolean paramBoolean)
    {
      return new Field(paramzza.zzrj(), paramBoolean, paramzza.zzrk(), false, paramString, paramInt, null, paramzza);
    }
    
    public static <T extends FastJsonResponse> Field<T, T> zza(String paramString, int paramInt, Class<T> paramClass)
    {
      return new Field(11, false, 11, false, paramString, paramInt, paramClass, null);
    }
    
    public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String paramString, int paramInt, Class<T> paramClass)
    {
      return new Field(11, true, 11, true, paramString, paramInt, paramClass, null);
    }
    
    public static Field<Integer, Integer> zzi(String paramString, int paramInt)
    {
      return new Field(0, false, 0, false, paramString, paramInt, null, null);
    }
    
    public static Field<Double, Double> zzj(String paramString, int paramInt)
    {
      return new Field(4, false, 4, false, paramString, paramInt, null, null);
    }
    
    public static Field<Boolean, Boolean> zzk(String paramString, int paramInt)
    {
      return new Field(6, false, 6, false, paramString, paramInt, null, null);
    }
    
    public static Field<String, String> zzl(String paramString, int paramInt)
    {
      return new Field(7, false, 7, false, paramString, paramInt, null, null);
    }
    
    public static Field<ArrayList<String>, ArrayList<String>> zzm(String paramString, int paramInt)
    {
      return new Field(7, true, 7, true, paramString, paramInt, null, null);
    }
    
    public I convertBack(O paramO)
    {
      return (I)zzamU.convertBack(paramO);
    }
    
    public int describeContents()
    {
      zza localzza = CREATOR;
      return 0;
    }
    
    public int getVersionCode()
    {
      return mVersionCode;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("Field\n");
      localStringBuilder1.append("            versionCode=").append(mVersionCode).append('\n');
      localStringBuilder1.append("                 typeIn=").append(zzamL).append('\n');
      localStringBuilder1.append("            typeInArray=").append(zzamM).append('\n');
      localStringBuilder1.append("                typeOut=").append(zzamN).append('\n');
      localStringBuilder1.append("           typeOutArray=").append(zzamO).append('\n');
      localStringBuilder1.append("        outputFieldName=").append(zzamP).append('\n');
      localStringBuilder1.append("      safeParcelFieldId=").append(zzamQ).append('\n');
      localStringBuilder1.append("       concreteTypeName=").append(zzru()).append('\n');
      if (zzrt() != null) {
        localStringBuilder1.append("     concreteType.class=").append(zzrt().getCanonicalName()).append('\n');
      }
      StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
      if (zzamU == null) {}
      for (String str = "null";; str = zzamU.getClass().getCanonicalName())
      {
        localStringBuilder2.append(str).append('\n');
        return localStringBuilder1.toString();
      }
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zza localzza = CREATOR;
      zza.zza(this, paramParcel, paramInt);
    }
    
    public void zza(FieldMappingDictionary paramFieldMappingDictionary)
    {
      zzamT = paramFieldMappingDictionary;
    }
    
    public int zzrj()
    {
      return zzamL;
    }
    
    public int zzrk()
    {
      return zzamN;
    }
    
    public Field<I, O> zzro()
    {
      return new Field(mVersionCode, zzamL, zzamM, zzamN, zzamO, zzamP, zzamQ, zzamS, zzrw());
    }
    
    public boolean zzrp()
    {
      return zzamM;
    }
    
    public boolean zzrq()
    {
      return zzamO;
    }
    
    public String zzrr()
    {
      return zzamP;
    }
    
    public int zzrs()
    {
      return zzamQ;
    }
    
    public Class<? extends FastJsonResponse> zzrt()
    {
      return zzamR;
    }
    
    String zzru()
    {
      if (zzamS == null) {
        return null;
      }
      return zzamS;
    }
    
    public boolean zzrv()
    {
      return zzamU != null;
    }
    
    ConverterWrapper zzrw()
    {
      if (zzamU == null) {
        return null;
      }
      return ConverterWrapper.zza(zzamU);
    }
    
    public Map<String, Field<?, ?>> zzrx()
    {
      zzx.zzz(zzamS);
      zzx.zzz(zzamT);
      return zzamT.zzcR(zzamS);
    }
  }
  
  public static abstract interface zza<I, O>
  {
    public abstract I convertBack(O paramO);
    
    public abstract int zzrj();
    
    public abstract int zzrk();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.server.response.FastJsonResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */