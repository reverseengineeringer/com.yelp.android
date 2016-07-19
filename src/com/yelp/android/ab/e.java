package com.yelp.android.ab;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.d;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.q;
import com.yelp.android.w.f;

public class e
  extends q<ParcelFileDescriptor>
  implements b<Uri>
{
  public e(Context paramContext, l<d, ParcelFileDescriptor> paraml)
  {
    super(paramContext, paraml);
  }
  
  protected com.yelp.android.w.c<ParcelFileDescriptor> a(Context paramContext, Uri paramUri)
  {
    return new f(paramContext, paramUri);
  }
  
  protected com.yelp.android.w.c<ParcelFileDescriptor> a(Context paramContext, String paramString)
  {
    return new com.yelp.android.w.e(paramContext.getApplicationContext().getAssets(), paramString);
  }
  
  public static class a
    implements m<Uri, ParcelFileDescriptor>
  {
    public l<Uri, ParcelFileDescriptor> a(Context paramContext, com.yelp.android.aa.c paramc)
    {
      return new e(paramContext, paramc.a(d.class, ParcelFileDescriptor.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */