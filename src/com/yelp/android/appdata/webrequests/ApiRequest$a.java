package com.yelp.android.appdata.webrequests;

import com.yelp.android.util.q;

final class ApiRequest$a<Params, Progress, Result>
  extends q<Params, Progress, Result>
{
  ApiRequest<Params, Progress, Result> a;
  
  public ApiRequest$a(ApiRequest<Params, Progress, Result> paramApiRequest)
  {
    a = paramApiRequest;
  }
  
  final void a(Progress... paramVarArgs)
  {
    super.publishProgress(paramVarArgs);
  }
  
  protected Result doInBackground(Params... paramVarArgs)
  {
    return (Result)a.c(paramVarArgs);
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
    a.c();
  }
  
  protected void onPostExecute(Result paramResult)
  {
    super.onPostExecute(paramResult);
    if (!isCancelled()) {
      a.a(paramResult);
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (!isCancelled()) {
      a.e();
    }
  }
  
  protected void onProgressUpdate(Progress... paramVarArgs)
  {
    super.onProgressUpdate(paramVarArgs);
    if (!isCancelled()) {
      a.d(paramVarArgs);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ApiRequest.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */