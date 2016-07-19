package com.yelp.android.cz;

import android.app.Activity;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;
import jp.line.android.sdk.login.LineLoginFuture.ProgressOfLogin;

final class b$f
  implements Runnable
{
  private final Activity a;
  private final d b;
  
  b$f(Activity paramActivity, d paramd)
  {
    a = paramActivity;
    b = paramd;
  }
  
  public final void run()
  {
    if (!b.a())
    {
      com.yelp.android.db.a locala = com.yelp.android.cv.a.a().b();
      if (locala != null)
      {
        b.a(locala);
        return;
      }
    }
    if ((a == null) && (b.d().flowNumber < GOT_REQUEST_TOKENflowNumber))
    {
      b.a(new LineSdkLoginException(LineSdkLoginError.FAILED_START_LOGIN_ACTIVITY, "activity is null"));
      return;
    }
    b.a(b, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */