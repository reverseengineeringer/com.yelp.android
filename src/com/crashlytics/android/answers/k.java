package com.crashlytics.android.answers;

import android.content.Context;
import com.yelp.android.ct.d;
import com.yelp.android.ct.g;
import io.fabric.sdk.android.services.common.j;
import io.fabric.sdk.android.services.settings.b;
import java.io.IOException;
import java.util.UUID;

class k
  extends d<SessionEvent>
{
  private b g;
  
  k(Context paramContext, p paramp, j paramj, g paramg)
    throws IOException
  {
    super(paramContext, paramp, paramj, paramg, 100);
  }
  
  protected String a()
  {
    UUID localUUID = UUID.randomUUID();
    return "sa" + "_" + localUUID.toString() + "_" + c.a() + ".tap";
  }
  
  void a(b paramb)
  {
    g = paramb;
  }
  
  protected int b()
  {
    if (g == null) {
      return super.b();
    }
    return g.e;
  }
  
  protected int c()
  {
    if (g == null) {
      return super.c();
    }
    return g.c;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */