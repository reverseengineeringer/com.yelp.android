package com.yelp.android.ab;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.c;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.p;

public class d
  extends p<ParcelFileDescriptor>
  implements b<String>
{
  public d(l<Uri, ParcelFileDescriptor> paraml)
  {
    super(paraml);
  }
  
  public static class a
    implements m<String, ParcelFileDescriptor>
  {
    public l<String, ParcelFileDescriptor> a(Context paramContext, c paramc)
    {
      return new d(paramc.a(Uri.class, ParcelFileDescriptor.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */