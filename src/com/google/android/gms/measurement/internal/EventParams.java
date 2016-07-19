package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.Set;

public class EventParams
  implements SafeParcelable, Iterable<String>
{
  public static final t CREATOR = new t();
  public final int a;
  private final Bundle b;
  
  EventParams(int paramInt, Bundle paramBundle)
  {
    a = paramInt;
    b = paramBundle;
  }
  
  EventParams(Bundle paramBundle)
  {
    zzx.zzz(paramBundle);
    b = paramBundle;
    a = 1;
  }
  
  public int a()
  {
    return b.size();
  }
  
  Object a(String paramString)
  {
    return b.get(paramString);
  }
  
  public Bundle b()
  {
    return new Bundle(b);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Iterator<String> iterator()
  {
    new Iterator()
    {
      Iterator<String> a = EventParams.a(EventParams.this).keySet().iterator();
      
      public String a()
      {
        return (String)a.next();
      }
      
      public boolean hasNext()
      {
        return a.hasNext();
      }
      
      public void remove()
      {
        throw new UnsupportedOperationException("Remove not supported");
      }
    };
  }
  
  public String toString()
  {
    return b.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    t.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.EventParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */