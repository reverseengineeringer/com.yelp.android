package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@ey
public class gu$a
  extends MutableContextWrapper
{
  private Context mO;
  private Activity xd;
  
  public gu$a(Context paramContext)
  {
    super(paramContext);
    setBaseContext(paramContext);
  }
  
  public Context dI()
  {
    return xd;
  }
  
  public void setBaseContext(Context paramContext)
  {
    mO = paramContext.getApplicationContext();
    if ((paramContext instanceof Activity)) {}
    for (paramContext = (Activity)paramContext;; paramContext = null)
    {
      xd = paramContext;
      super.setBaseContext(mO);
      return;
    }
  }
  
  public void startActivity(Intent paramIntent)
  {
    if (xd != null)
    {
      xd.startActivity(paramIntent);
      return;
    }
    paramIntent.setFlags(268435456);
    mO.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */