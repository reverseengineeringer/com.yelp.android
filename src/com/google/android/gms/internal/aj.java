package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

@ey
public class aj
  implements ah
{
  private final gu mo;
  
  public aj(Context paramContext, gs paramgs)
  {
    mo = gu.a(paramContext, new ay(), false, false, null, paramgs);
  }
  
  private void runOnUiThread(Runnable paramRunnable)
  {
    if (gq.dB())
    {
      paramRunnable.run();
      return;
    }
    gq.wR.post(paramRunnable);
  }
  
  public void a(ah.a parama)
  {
    mo.dD().a(new aj.3(this, parama));
  }
  
  public void a(t paramt, ds paramds, cb paramcb, dv paramdv, boolean paramBoolean, ce paramce)
  {
    mo.dD().a(paramt, paramds, paramcb, paramdv, paramBoolean, paramce, new v(false));
  }
  
  public void a(String paramString, cd paramcd)
  {
    mo.dD().a(paramString, paramcd);
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    runOnUiThread(new aj.1(this, paramString, paramJSONObject));
  }
  
  public void destroy()
  {
    mo.destroy();
  }
  
  public void f(String paramString)
  {
    runOnUiThread(new aj.2(this, paramString));
  }
  
  public void g(String paramString)
  {
    mo.dD().a(paramString, null);
  }
  
  public void pause()
  {
    gi.a(mo);
  }
  
  public void resume()
  {
    gi.b(mo);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */