package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public class RegisterSectionInfo
  implements SafeParcelable
{
  public static final i CREATOR = new i();
  final int a;
  public final String b;
  public final String c;
  public final boolean d;
  public final int e;
  public final boolean f;
  public final String g;
  public final Feature[] h;
  final int[] i;
  public final String j;
  
  RegisterSectionInfo(int paramInt1, String paramString1, String paramString2, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString3, Feature[] paramArrayOfFeature, int[] paramArrayOfInt, String paramString4)
  {
    a = paramInt1;
    b = paramString1;
    c = paramString2;
    d = paramBoolean1;
    e = paramInt2;
    f = paramBoolean2;
    g = paramString3;
    h = paramArrayOfFeature;
    i = paramArrayOfInt;
    j = paramString4;
  }
  
  RegisterSectionInfo(String paramString1, String paramString2, boolean paramBoolean1, int paramInt, boolean paramBoolean2, String paramString3, Feature[] paramArrayOfFeature, int[] paramArrayOfInt, String paramString4)
  {
    this(2, paramString1, paramString2, paramBoolean1, paramInt, paramBoolean2, paramString3, paramArrayOfFeature, paramArrayOfInt, paramString4);
  }
  
  public int describeContents()
  {
    i locali = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i locali = CREATOR;
    i.a(this, paramParcel, paramInt);
  }
  
  public static final class a
  {
    private final String a;
    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private final List<Feature> g;
    private BitSet h;
    private String i;
    
    public a(String paramString)
    {
      a = paramString;
      d = 1;
      g = new ArrayList();
    }
    
    public a a(int paramInt)
    {
      if (h == null) {
        h = new BitSet();
      }
      h.set(paramInt);
      return this;
    }
    
    public a a(String paramString)
    {
      b = paramString;
      return this;
    }
    
    public a a(boolean paramBoolean)
    {
      c = paramBoolean;
      return this;
    }
    
    public RegisterSectionInfo a()
    {
      int j = 0;
      Object localObject = null;
      if (h != null)
      {
        int[] arrayOfInt = new int[h.cardinality()];
        int k = h.nextSetBit(0);
        for (;;)
        {
          localObject = arrayOfInt;
          if (k < 0) {
            break;
          }
          arrayOfInt[j] = k;
          k = h.nextSetBit(k + 1);
          j += 1;
        }
      }
      return new RegisterSectionInfo(a, b, c, d, e, f, (Feature[])g.toArray(new Feature[g.size()]), (int[])localObject, i);
    }
    
    public a b(String paramString)
    {
      i = paramString;
      return this;
    }
    
    public a b(boolean paramBoolean)
    {
      e = paramBoolean;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.RegisterSectionInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */