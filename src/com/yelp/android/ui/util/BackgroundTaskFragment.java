package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.yelp.android.ui.activities.mutatebiz.ae;
import com.yelp.android.ui.activities.mutatebiz.af;
import com.yelp.android.ui.activities.mutatebiz.ag;

public abstract class BackgroundTaskFragment<Param, ResultType>
  extends Fragment
  implements af<ResultType>, ag<Void, ResultType>
{
  private ResultType a;
  private g<ResultType> b;
  private AsyncTask<Void, Void, ResultType> c;
  private boolean d;
  
  public <T extends Fragment,  extends g<ResultType>> void a(T paramT)
  {
    b = ((g)paramT);
    setTargetFragment(paramT, 0);
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
    c = new ae(this, this, null, new View[0]);
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