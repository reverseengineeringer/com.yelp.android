package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public class DocumentContents
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  final int a;
  final DocumentSection[] b;
  public final String c;
  public final boolean d;
  public final Account e;
  
  DocumentContents(int paramInt, DocumentSection[] paramArrayOfDocumentSection, String paramString, boolean paramBoolean, Account paramAccount)
  {
    a = paramInt;
    b = paramArrayOfDocumentSection;
    c = paramString;
    d = paramBoolean;
    e = paramAccount;
  }
  
  DocumentContents(String paramString, boolean paramBoolean, Account paramAccount, DocumentSection... paramVarArgs)
  {
    this(1, paramVarArgs, paramString, paramBoolean, paramAccount);
    paramString = new BitSet(h.a());
    int i = 0;
    while (i < paramVarArgs.length)
    {
      int j = e;
      if (j != -1)
      {
        if (paramString.get(j)) {
          throw new IllegalArgumentException("Duplicate global search section type " + h.a(j));
        }
        paramString.set(j);
      }
      i += 1;
    }
  }
  
  public int describeContents()
  {
    b localb = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b localb = CREATOR;
    b.a(this, paramParcel, paramInt);
  }
  
  public static class a
  {
    private List<DocumentSection> a;
    private String b;
    private boolean c;
    private Account d;
    
    public a a(DocumentSection paramDocumentSection)
    {
      if (a == null) {
        a = new ArrayList();
      }
      a.add(paramDocumentSection);
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
    
    public DocumentContents a()
    {
      String str = b;
      boolean bool = c;
      Account localAccount = d;
      if (a != null) {}
      for (DocumentSection[] arrayOfDocumentSection = (DocumentSection[])a.toArray(new DocumentSection[a.size()]);; arrayOfDocumentSection = null) {
        return new DocumentContents(str, bool, localAccount, arrayOfDocumentSection);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.DocumentContents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */