package com.yelp.android.ui.activities.mutatebiz;

import android.os.AsyncTask;
import android.view.View;
import android.view.ViewStub;

public class ae<Param, Value>
  extends AsyncTask<Param, Void, Value>
{
  private final View a;
  private final View[] b;
  private final af<Value> c;
  private final ag<Param, Value> d;
  
  public ae(ag<Param, Value> paramag, af<Value> paramaf, View paramView, View... paramVarArgs)
  {
    a = paramView;
    b = paramVarArgs;
    c = paramaf;
    d = paramag;
  }
  
  protected Value doInBackground(Param... paramVarArgs)
  {
    return (Value)d.a(paramVarArgs);
  }
  
  protected void onPostExecute(Value paramValue)
  {
    super.onPostExecute(paramValue);
    if (a != null)
    {
      a.setVisibility(8);
      localObject = (View)a.getTag();
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
    }
    Object localObject = b;
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localObject[i].setVisibility(0);
      i += 1;
    }
    if (c != null) {
      c.a(paramValue);
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    Object localObject1 = null;
    Object localObject2;
    if (a != null)
    {
      localObject2 = (View)a.getTag();
      if ((localObject2 != null) || (!(a instanceof ViewStub))) {
        break label92;
      }
      localObject1 = ((ViewStub)a).inflate();
      a.setTag(localObject1);
    }
    for (;;)
    {
      localObject2 = b;
      int j = localObject2.length;
      int i = 0;
      while (i < j)
      {
        localObject2[i].setVisibility(8);
        i += 1;
      }
      label92:
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = a;
      }
    }
    if (localObject1 != null) {
      ((View)localObject1).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */