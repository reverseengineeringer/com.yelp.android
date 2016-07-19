package com.google.android.gms.appdatasearch;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ko.a;
import com.google.android.gms.internal.ko.a.a;
import com.google.android.gms.internal.lq;
import com.yelp.android.bh.c.a;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.zip.CRC32;

public class UsageInfo
  implements SafeParcelable
{
  public static final j CREATOR = new j();
  final int a;
  final DocumentId b;
  final long c;
  int d;
  public final String e;
  final DocumentContents f;
  final boolean g;
  int h;
  int i;
  
  UsageInfo(int paramInt1, DocumentId paramDocumentId, long paramLong, int paramInt2, String paramString, DocumentContents paramDocumentContents, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramDocumentId;
    c = paramLong;
    d = paramInt2;
    e = paramString;
    f = paramDocumentContents;
    g = paramBoolean;
    h = paramInt3;
    i = paramInt4;
  }
  
  private UsageInfo(DocumentId paramDocumentId, long paramLong, int paramInt1, String paramString, DocumentContents paramDocumentContents, boolean paramBoolean, int paramInt2, int paramInt3)
  {
    this(1, paramDocumentId, paramLong, paramInt1, paramString, paramDocumentContents, paramBoolean, paramInt2, paramInt3);
  }
  
  public UsageInfo(String paramString1, Intent paramIntent, String paramString2, Uri paramUri, String paramString3, List<c.a> paramList, int paramInt)
  {
    this(1, a(paramString1, paramIntent), System.currentTimeMillis(), 0, null, a(paramIntent, paramString2, paramUri, paramString3, paramList).a(), false, -1, paramInt);
  }
  
  public static DocumentContents.a a(Intent paramIntent, String paramString1, Uri paramUri, String paramString2, List<c.a> paramList)
  {
    DocumentContents.a locala = new DocumentContents.a();
    locala.a(a(paramString1));
    if (paramUri != null) {
      locala.a(a(paramUri));
    }
    if (paramList != null) {
      locala.a(a(paramList));
    }
    paramString1 = paramIntent.getAction();
    if (paramString1 != null) {
      locala.a(b("intent_action", paramString1));
    }
    paramString1 = paramIntent.getDataString();
    if (paramString1 != null) {
      locala.a(b("intent_data", paramString1));
    }
    paramString1 = paramIntent.getComponent();
    if (paramString1 != null) {
      locala.a(b("intent_activity", paramString1.getClassName()));
    }
    paramIntent = paramIntent.getExtras();
    if (paramIntent != null)
    {
      paramIntent = paramIntent.getString("intent_extra_data_key");
      if (paramIntent != null) {
        locala.a(b("intent_extra_data", paramIntent));
      }
    }
    return locala.a(paramString2).a(true);
  }
  
  public static DocumentId a(String paramString, Intent paramIntent)
  {
    return a(paramString, a(paramIntent));
  }
  
  private static DocumentId a(String paramString1, String paramString2)
  {
    return new DocumentId(paramString1, "", paramString2);
  }
  
  private static DocumentSection a(Uri paramUri)
  {
    return new DocumentSection(paramUri.toString(), new RegisterSectionInfo.a("web_url").a(4).a(true).b("url").a());
  }
  
  private static DocumentSection a(String paramString)
  {
    return new DocumentSection(paramString, new RegisterSectionInfo.a("title").a(1).b(true).b("name").a(), "text1");
  }
  
  private static DocumentSection a(List<c.a> paramList)
  {
    ko.a locala = new ko.a();
    ko.a.a[] arrayOfa = new ko.a.a[paramList.size()];
    int j = 0;
    while (j < arrayOfa.length)
    {
      arrayOfa[j] = new ko.a.a();
      c.a locala1 = (c.a)paramList.get(j);
      a = a.toString();
      c = c;
      if (b != null) {
        b = b.toString();
      }
      j += 1;
    }
    a = arrayOfa;
    return new DocumentSection(lq.a(locala), new RegisterSectionInfo.a("outlinks").a(true).b(".private:outLinks").a("blob").a());
  }
  
  private static String a(Intent paramIntent)
  {
    paramIntent = paramIntent.toUri(1);
    CRC32 localCRC32 = new CRC32();
    try
    {
      localCRC32.update(paramIntent.getBytes("UTF-8"));
      return Long.toHexString(localCRC32.getValue());
    }
    catch (UnsupportedEncodingException paramIntent)
    {
      throw new IllegalStateException(paramIntent);
    }
  }
  
  private static DocumentSection b(String paramString1, String paramString2)
  {
    return new DocumentSection(paramString2, new RegisterSectionInfo.a(paramString1).a(true).a(), paramString1);
  }
  
  public int describeContents()
  {
    j localj = CREATOR;
    return 0;
  }
  
  public String toString()
  {
    return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", new Object[] { b, Long.valueOf(c), Integer.valueOf(d), Integer.valueOf(i) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j localj = CREATOR;
    j.a(this, paramParcel, paramInt);
  }
  
  public static final class a
  {
    private DocumentId a;
    private long b = -1L;
    private int c = -1;
    private String d;
    private DocumentContents e;
    private boolean f = false;
    private int g = -1;
    private int h = 0;
    
    public a a(int paramInt)
    {
      c = paramInt;
      return this;
    }
    
    public a a(long paramLong)
    {
      b = paramLong;
      return this;
    }
    
    public a a(DocumentId paramDocumentId)
    {
      a = paramDocumentId;
      return this;
    }
    
    public UsageInfo a()
    {
      return new UsageInfo(a, b, c, d, e, f, g, h, null);
    }
    
    public a b(int paramInt)
    {
      h = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.UsageInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */