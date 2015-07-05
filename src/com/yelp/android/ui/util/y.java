package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.util.SparseArray;
import com.yelp.android.appdata.BaseYelpApplication;
import java.util.List;

class y
  extends AsyncTask<List<From>, Void, Void>
{
  y(x paramx) {}
  
  protected Void a(List<From>... paramVarArgs)
  {
    int i = 0;
    paramVarArgs = paramVarArgs[0];
    x.a(a, new SparseArray(paramVarArgs.size()));
    BaseYelpApplication localBaseYelpApplication = BaseYelpApplication.z();
    while (i < paramVarArgs.size())
    {
      Object localObject = a.a(localBaseYelpApplication, paramVarArgs.get(i));
      x.a(a).append(i, localObject);
      i += 1;
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    x.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */