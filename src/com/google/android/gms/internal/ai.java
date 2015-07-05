package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.concurrent.Future;

@ey
public class ai
{
  protected ah a(Context paramContext, gs paramgs, gj<ah> paramgj)
  {
    paramContext = new aj(paramContext, paramgs);
    paramContext.a(new ai.2(this, paramgj, paramContext));
    return paramContext;
  }
  
  public Future<ah> a(Context paramContext, gs paramgs, String paramString)
  {
    gj localgj = new gj();
    gq.wR.post(new ai.1(this, paramContext, paramgs, localgj, paramString));
    return localgj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */