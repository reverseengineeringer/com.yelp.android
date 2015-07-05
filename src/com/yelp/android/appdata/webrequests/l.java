package com.yelp.android.appdata.webrequests;

import com.yelp.android.util.aa;

final class l<Params, Progress, Result>
  extends aa<Params, Progress, Result>
{
  ApiRequest<Params, Progress, Result> a;
  
  public l(ApiRequest<Params, Progress, Result> paramApiRequest)
  {
    a = paramApiRequest;
  }
  
  final void a(Progress... paramVarArgs)
  {
    super.publishProgress(paramVarArgs);
  }
  
  protected Result doInBackground(Params... paramVarArgs)
  {
    return (Result)a.doInBackground(paramVarArgs);
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    a.onCancelled();
  }
  
  protected void onPostExecute(Result paramResult)
  {
    super.onPostExecute(paramResult);
    if (!isCancelled()) {
      a.onPostExecute(paramResult);
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (!isCancelled()) {
      a.onPreExecute();
    }
  }
  
  protected void onProgressUpdate(Progress... paramVarArgs)
  {
    super.onProgressUpdate(paramVarArgs);
    if (!isCancelled()) {
      a.onProgressUpdate(paramVarArgs);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */