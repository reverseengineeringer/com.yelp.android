package com.yelp.android.ck;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ch;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import jp.line.android.sdk.c;
import jp.line.android.sdk.login.LineLoginFuture;

public class e
  implements g
{
  private ChangeSettings a;
  private String b;
  private jp.line.android.sdk.login.a c;
  private c.a d = new e.6(this);
  
  private void a()
  {
    e.1 local1 = new e.1(this);
    e.2 local2 = new e.2(this);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    localBuilder.setMessage(2131165505).setPositiveButton(2131166857, local2).setNegativeButton(2131165583, local2).setOnCancelListener(local1);
    localBuilder.create().show();
  }
  
  private void a(LineLoginFuture paramLineLoginFuture)
  {
    paramLineLoginFuture = gb;
    c.a().b().b(new e.3(this, paramLineLoginFuture));
  }
  
  private void a(boolean paramBoolean)
  {
    a.hideLoadingDialog();
    AppData.b().q().p().e(paramBoolean);
  }
  
  private void b()
  {
    c.a(a).a(new e.4(this));
  }
  
  private void c()
  {
    c.c();
    AppData.a(EventIri.LineDisconnect);
    new ch(new e.5(this)).f(new Void[0]);
  }
  
  public void a(ChangeSettings paramChangeSettings, String paramString, int paramInt)
  {
    a = paramChangeSettings;
    b = paramString;
    paramChangeSettings.showLoadingDialog(2131166492);
    c = c.a().c();
    if (paramInt == 1)
    {
      b();
      return;
    }
    if (AppData.b().q().p().aa().equals("line"))
    {
      a();
      return;
    }
    c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ck.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */