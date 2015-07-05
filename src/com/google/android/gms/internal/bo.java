package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

@ey
public final class bo
  extends bq.a
{
  private final w px;
  private final String py;
  private final String pz;
  
  public bo(w paramw, String paramString1, String paramString2)
  {
    px = paramw;
    py = paramString1;
    pz = paramString2;
  }
  
  public void a(d paramd)
  {
    if (paramd == null) {
      return;
    }
    px.b((View)e.f(paramd));
  }
  
  public void av()
  {
    px.av();
  }
  
  public void aw()
  {
    px.aw();
  }
  
  public String bA()
  {
    return pz;
  }
  
  public String bz()
  {
    return py;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */