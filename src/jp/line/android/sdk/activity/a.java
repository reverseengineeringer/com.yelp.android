package jp.line.android.sdk.activity;

import com.yelp.android.cz.b;
import com.yelp.android.cz.d;
import jp.line.android.sdk.c;

public final class a
{
  protected static final d a()
  {
    Object localObject = c.a().c();
    if (!(localObject instanceof b)) {
      throw new RuntimeException("AuthManager instance was not jp.line.android.sdk.login.impl.LineAuthManagerImpl.");
    }
    localObject = ((b)localObject).b();
    if ((localObject != null) && (!(localObject instanceof d))) {
      throw new RuntimeException("LoginFuture instance was not jp.line.android.sdk.login.impl.LineLoginFutureImpl.");
    }
    return (d)localObject;
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.activity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */