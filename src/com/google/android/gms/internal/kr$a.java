package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;

public class kr$a<I, O>
  implements SafeParcelable
{
  public static final kt CREATOR = new kt();
  private final int CK;
  protected final int NL;
  protected final boolean NM;
  protected final int NN;
  protected final boolean NO;
  protected final String NP;
  protected final int NQ;
  protected final Class<? extends kr> NR;
  protected final String NS;
  private kv NT;
  private kr.b<I, O> NU;
  
  kr$a(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, km paramkm)
  {
    CK = paramInt1;
    NL = paramInt2;
    NM = paramBoolean1;
    NN = paramInt3;
    NO = paramBoolean2;
    NP = paramString1;
    NQ = paramInt4;
    if (paramString2 == null) {
      NR = null;
    }
    for (NS = null; paramkm == null; NS = paramString2)
    {
      NU = null;
      return;
      NR = ky.class;
    }
    NU = paramkm.hG();
  }
  
  protected kr$a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends kr> paramClass, kr.b<I, O> paramb)
  {
    CK = 1;
    NL = paramInt1;
    NM = paramBoolean1;
    NN = paramInt2;
    NO = paramBoolean2;
    NP = paramString;
    NQ = paramInt3;
    NR = paramClass;
    if (paramClass == null) {}
    for (NS = null;; NS = paramClass.getCanonicalName())
    {
      NU = paramb;
      return;
    }
  }
  
  public static a a(String paramString, int paramInt, kr.b<?, ?> paramb, boolean paramBoolean)
  {
    return new a(paramb.hI(), paramBoolean, paramb.hJ(), false, paramString, paramInt, null, paramb);
  }
  
  public static <T extends kr> a<T, T> a(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, false, 11, false, paramString, paramInt, paramClass, null);
  }
  
  public static <T extends kr> a<ArrayList<T>, ArrayList<T>> b(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, true, 11, true, paramString, paramInt, paramClass, null);
  }
  
  public static a<Integer, Integer> i(String paramString, int paramInt)
  {
    return new a(0, false, 0, false, paramString, paramInt, null, null);
  }
  
  public static a<Double, Double> j(String paramString, int paramInt)
  {
    return new a(4, false, 4, false, paramString, paramInt, null, null);
  }
  
  public static a<Boolean, Boolean> k(String paramString, int paramInt)
  {
    return new a(6, false, 6, false, paramString, paramInt, null, null);
  }
  
  public static a<String, String> l(String paramString, int paramInt)
  {
    return new a(7, false, 7, false, paramString, paramInt, null, null);
  }
  
  public static a<ArrayList<String>, ArrayList<String>> m(String paramString, int paramInt)
  {
    return new a(7, true, 7, true, paramString, paramInt, null, null);
  }
  
  public void a(kv paramkv)
  {
    NT = paramkv;
  }
  
  public I convertBack(O paramO)
  {
    return (I)NU.convertBack(paramO);
  }
  
  public int describeContents()
  {
    kt localkt = CREATOR;
    return 0;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public int hI()
  {
    return NL;
  }
  
  public int hJ()
  {
    return NN;
  }
  
  public a<I, O> hN()
  {
    return new a(CK, NL, NM, NN, NO, NP, NQ, NS, hV());
  }
  
  public boolean hO()
  {
    return NM;
  }
  
  public boolean hP()
  {
    return NO;
  }
  
  public String hQ()
  {
    return NP;
  }
  
  public int hR()
  {
    return NQ;
  }
  
  public Class<? extends kr> hS()
  {
    return NR;
  }
  
  String hT()
  {
    if (NS == null) {
      return null;
    }
    return NS;
  }
  
  public boolean hU()
  {
    return NU != null;
  }
  
  km hV()
  {
    if (NU == null) {
      return null;
    }
    return km.a(NU);
  }
  
  public HashMap<String, a<?, ?>> hW()
  {
    jx.i(NS);
    jx.i(NT);
    return NT.bg(NS);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Field\n");
    localStringBuilder1.append("            versionCode=").append(CK).append('\n');
    localStringBuilder1.append("                 typeIn=").append(NL).append('\n');
    localStringBuilder1.append("            typeInArray=").append(NM).append('\n');
    localStringBuilder1.append("                typeOut=").append(NN).append('\n');
    localStringBuilder1.append("           typeOutArray=").append(NO).append('\n');
    localStringBuilder1.append("        outputFieldName=").append(NP).append('\n');
    localStringBuilder1.append("      safeParcelFieldId=").append(NQ).append('\n');
    localStringBuilder1.append("       concreteTypeName=").append(hT()).append('\n');
    if (hS() != null) {
      localStringBuilder1.append("     concreteType.class=").append(hS().getCanonicalName()).append('\n');
    }
    StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
    if (NU == null) {}
    for (String str = "null";; str = NU.getClass().getCanonicalName())
    {
      localStringBuilder2.append(str).append('\n');
      return localStringBuilder1.toString();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kt localkt = CREATOR;
    kt.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kr.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */