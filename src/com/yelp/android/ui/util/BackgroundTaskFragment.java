package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.yelp.android.ui.activities.mutatebiz.c;
import com.yelp.android.ui.activities.mutatebiz.c.a;
import com.yelp.android.ui.activities.mutatebiz.c.b;

@Deprecated
public abstract class BackgroundTaskFragment<Param, ResultType>
  extends Fragment
  implements c.a<ResultType>, c.b<Void, ResultType>
{
  private ResultType a;
  private d.a<ResultType> b;
  private AsyncTask<Void, Void, ResultType> c;
  private boolean d;
  
  public <T extends d.a<ResultType>> void a(T paramT)
  {
    b = paramT;
  }
  
  public void a(ResultType paramResultType)
  {
    if (b == null)
    {
      a = paramResultType;
      return;
    }
    b.a(paramResultType);
    a = null;
  }
  
  public boolean a()
  {
    return d;
  }
  
  protected abstract ResultType b(Void... paramVarArgs);
  
  public void b()
  {
    c = new c(this, this, null, new View[0]);
    c.execute(new Void[0]);
  }
  
  public ResultType c(Void... paramVarArgs)
  {
    d = true;
    paramVarArgs = b(paramVarArgs);
    d = false;
    return paramVarArgs;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (a != null)
    {
      b.a(a);
      a = null;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.BackgroundTaskFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */