package com.yelp.android.cz;

import android.app.Activity;
import com.yelp.android.db.f;
import java.lang.ref.WeakReference;
import jp.line.android.sdk.api.c;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;

final class b$d
  implements c<f>
{
  private final WeakReference<Activity> a;
  private final d b;
  
  b$d(Activity paramActivity, d paramd)
  {
    a = new WeakReference(paramActivity);
    b = paramd;
  }
  
  public final void a(jp.line.android.sdk.api.b<f> paramb)
  {
    for (;;)
    {
      try
      {
        switch (b.1.b[paramb.b().ordinal()])
        {
        case 1: 
          b.a(new LineSdkLoginException(LineSdkLoginError.UNKNOWN, "Unknown ApiReqeustFuture.status. status = " + paramb.b()));
          return;
        }
      }
      catch (Throwable paramb)
      {
        b.a(paramb);
        return;
      }
      b.a((f)paramb.c());
      b.a(b, (Activity)a.get());
      return;
      b.h();
      return;
      b.a(paramb.d());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */