package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@fv
public class t
  extends o
{
  private final dc d;
  
  public t(Context paramContext, AdSizeParcel paramAdSizeParcel, gr paramgr, VersionInfoParcel paramVersionInfoParcel, w paramw, dc paramdc)
  {
    super(paramContext, paramAdSizeParcel, paramgr, paramVersionInfoParcel, paramw);
    d = paramdc;
    a(d);
    a();
    b(false);
    gz.a("Tracking ad unit: " + b.d());
  }
  
  protected void b(JSONObject paramJSONObject)
  {
    d.a("AFMA_updateActiveView", paramJSONObject);
  }
  
  protected void c()
  {
    synchronized (a)
    {
      super.c();
      b(d);
      return;
    }
  }
  
  public void d()
  {
    c();
  }
  
  protected boolean j()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */