package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;

@ey
public final class ff$a
  extends ff
{
  private final Context mContext;
  
  public ff$a(Context paramContext, fh paramfh, fe.a parama)
  {
    super(paramfh, parama);
    mContext = paramContext;
  }
  
  public void cJ() {}
  
  public fl cK()
  {
    Object localObject = ga.bN();
    localObject = new bm(((Bundle)localObject).getString("gads:sdk_core_location"), ((Bundle)localObject).getString("gads:sdk_core_experiment_id"), ((Bundle)localObject).getString("gads:block_autoclicks_experiment_id"), ((Bundle)localObject).getString("gads:spam_app_context:experiment_id"));
    return fq.a(mContext, (bm)localObject, new co(), new fx());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ff.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */