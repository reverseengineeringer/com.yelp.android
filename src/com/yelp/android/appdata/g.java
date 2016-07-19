package com.yelp.android.appdata;

import android.content.Context;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;

public class g
  extends AsyncTask<Void, Void, Boolean>
{
  private final WeakReference<Context> a;
  private final WeakReference<Features.a> b;
  private final Features c;
  
  public g(Features paramFeatures, Context paramContext, Features.a parama)
  {
    c = paramFeatures;
    a = new WeakReference(paramContext);
    b = new WeakReference(parama);
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
    Features.a locala = (Features.a)b.get();
    if ((locala == null) || (paramBoolean == null)) {
      return;
    }
    locala.a(paramBoolean.booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */