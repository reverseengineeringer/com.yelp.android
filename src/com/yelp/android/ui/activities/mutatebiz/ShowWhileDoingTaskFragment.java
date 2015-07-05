package com.yelp.android.ui.activities.mutatebiz;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.ui.util.g;

public abstract class ShowWhileDoingTaskFragment<Param, ResultType>
  extends Fragment
  implements af<ResultType>, ag<Void, ResultType>
{
  private ResultType a;
  private g<ResultType> b;
  
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
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ShowWhileDoingTaskFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */