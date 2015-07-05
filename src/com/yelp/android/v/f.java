package com.yelp.android.v;

import android.os.ParcelFileDescriptor;
import com.yelp.android.r.c;
import java.io.InputStream;

public class f<A>
  implements m<A, h>
{
  private final m<A, InputStream> a;
  private final m<A, ParcelFileDescriptor> b;
  
  public f(m<A, InputStream> paramm, m<A, ParcelFileDescriptor> paramm1)
  {
    if ((paramm == null) && (paramm1 == null)) {
      throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
    }
    a = paramm;
    b = paramm1;
  }
  
  public c<h> a(A paramA, int paramInt1, int paramInt2)
  {
    g localg = null;
    if (a != null) {}
    for (c localc = a.a(paramA, paramInt1, paramInt2);; localc = null)
    {
      if (b != null) {}
      for (paramA = b.a(paramA, paramInt1, paramInt2);; paramA = null)
      {
        if ((localc != null) || (paramA != null)) {
          localg = new g(localc, paramA);
        }
        return localg;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */