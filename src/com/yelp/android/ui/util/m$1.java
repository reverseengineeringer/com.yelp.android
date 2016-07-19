package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.util.SparseArray;
import com.yelp.android.appdata.BaseYelpApplication;
import java.util.List;

class m$1
  extends AsyncTask<List<From>, Void, Void>
{
  m$1(m paramm) {}
  
  protected Void a(List<From>... paramVarArgs)
  {
    int i = 0;
    paramVarArgs = paramVarArgs[0];
    m.a(a, new SparseArray(paramVarArgs.size()));
    BaseYelpApplication localBaseYelpApplication = BaseYelpApplication.K();
    while (i < paramVarArgs.size())
    {
      Object localObject = a.a(localBaseYelpApplication, paramVarArgs.get(i));
      m.a(a).append(i, localObject);
      i += 1;
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    m.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.m.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */