package jp.line.android.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.cz.a.a;
import com.yelp.android.cz.b;
import com.yelp.android.cz.d;
import com.yelp.android.cz.g;
import com.yelp.android.db.f;
import com.yelp.android.db.i;
import jp.line.android.sdk.c;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;
import jp.line.android.sdk.login.LineLoginFuture.ProgressOfLogin;

public class LineAuthCompleteActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a.a locala = com.yelp.android.cz.a.a(getIntent().getData());
    paramBundle = c.a().c();
    int i;
    if (((paramBundle instanceof b)) && (!((b)paramBundle).a()))
    {
      i = 1;
      paramBundle = a.a();
      if (paramBundle == null) {
        break label191;
      }
      f localf = paramBundle.e();
      if ((localf == null) || (a == null) || (!a.equals(c))) {
        break label191;
      }
      label86:
      if ((paramBundle != null) && (paramBundle.d() == LineLoginFuture.ProgressOfLogin.STARTED_A2A_LOGIN)) {
        switch (a)
        {
        default: 
          paramBundle.a(new LineSdkLoginException(LineSdkLoginError.FAILED_A2A_LOGIN, a));
        }
      }
    }
    for (;;)
    {
      if ((i != 0) && (paramBundle != null))
      {
        paramBundle = c.a().h();
        if (paramBundle != null) {
          startActivity(new Intent(this, paramBundle));
        }
      }
      finish();
      return;
      i = 0;
      break;
      label191:
      paramBundle = null;
      break label86;
      paramBundle.a(i.a(b));
      g.a().a(paramBundle);
      continue;
      paramBundle.h();
    }
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.activity.LineAuthCompleteActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */