package com.yelp.android.cz;

import com.yelp.android.db.a;
import jp.line.android.sdk.api.b;
import jp.line.android.sdk.api.c;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;

final class b$c
  implements c<a>
{
  private final d a;
  
  b$c(d paramd)
  {
    a = paramd;
  }
  
  public final void a(b<a> paramb)
  {
    for (;;)
    {
      try
      {
        switch (b.1.b[paramb.b().ordinal()])
        {
        case 1: 
          a.a(new LineSdkLoginException(LineSdkLoginError.UNKNOWN, "Unknown ApiReqeustFuture.status. status = " + paramb.b()));
          return;
        }
      }
      catch (Throwable paramb)
      {
        a.a(paramb);
        return;
      }
      a.a((a)paramb.c());
      return;
      a.h();
      return;
      a.a(paramb.d());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */