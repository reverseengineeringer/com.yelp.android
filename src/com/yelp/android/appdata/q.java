package com.yelp.android.appdata;

import android.content.Context;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;

class q
  extends AsyncTask<Void, Void, Boolean>
{
  private final WeakReference<Context> a;
  private final WeakReference<r> b;
  private final Features c;
  
  public q(Features paramFeatures, Context paramContext, r paramr)
  {
    c = paramFeatures;
    a = new WeakReference(paramContext);
    b = new WeakReference(paramr);
  }
  
  protected Boolean a(Void... paramVarArgs)
  {
    paramVarArgs = (Context)a.get();
    if (paramVarArgs == null) {
      return null;
    }
    return Boolean.valueOf(c.isEnabled(paramVarArgs));
  }
  
  protected void a(Boolean paramBoolean)
  {
    r localr = (r)b.get();
    if ((localr == null) || (paramBoolean == null)) {
      return;
    }
    localr.a(paramBoolean.booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */