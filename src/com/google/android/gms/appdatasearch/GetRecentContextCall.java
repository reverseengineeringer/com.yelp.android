package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class GetRecentContextCall
{
  public static class Request
    implements SafeParcelable
  {
    public static final f CREATOR = new f();
    final int a;
    public final Account b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final String f;
    
    public Request()
    {
      this(null, false, false, false, null);
    }
    
    Request(int paramInt, Account paramAccount, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString)
    {
      a = paramInt;
      b = paramAccount;
      c = paramBoolean1;
      d = paramBoolean2;
      e = paramBoolean3;
      f = paramString;
    }
    
    public Request(Account paramAccount, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString)
    {
      this(1, paramAccount, paramBoolean1, paramBoolean2, paramBoolean3, paramString);
    }
    
    public int describeContents()
    {
      f localf = CREATOR;
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      f localf = CREATOR;
      f.a(this, paramParcel, paramInt);
    }
  }
  
  public static class Response
    implements Result, SafeParcelable
  {
    public static final g CREATOR = new g();
    public Status a;
    public List<UsageInfo> b;
    @Deprecated
    public String[] c;
    final int d;
    
    public Response()
    {
      d = 1;
    }
    
    Response(int paramInt, Status paramStatus, List<UsageInfo> paramList, String[] paramArrayOfString)
    {
      d = paramInt;
      a = paramStatus;
      b = paramList;
      c = paramArrayOfString;
    }
    
    public int describeContents()
    {
      g localg = CREATOR;
      return 0;
    }
    
    public Status getStatus()
    {
      return a;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      g localg = CREATOR;
      g.a(this, paramParcel, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.GetRecentContextCall
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */