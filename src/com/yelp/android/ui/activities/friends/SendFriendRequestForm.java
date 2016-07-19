package com.yelp.android.ui.activities.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.i;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.util.ap.b;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;

public class SendFriendRequestForm
  extends YelpActivity
  implements c.a
{
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, SendFriendRequestForm.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  public static User a(Intent paramIntent)
  {
    return (User)paramIntent.getParcelableExtra("extra.user");
  }
  
  public void a()
  {
    Intent localIntent = getIntent();
    User localUser = (User)localIntent.getParcelableExtra("extra.user");
    localUser.b(true);
    localIntent.putExtra("extra.user", localUser);
    setResult(-1, localIntent);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    hideLoadingDialog();
    as.a(2131166460, 0);
    a();
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.AddFriend;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903124);
    paramBundle = (User)getIntent().getParcelableExtra("extra.user");
    View localView = findViewById(2131689867);
    new ap.b(localView, false).a(localView.getContext(), paramBundle.ad(), paramBundle.k_(), paramBundle.j_(), paramBundle.l_(), paramBundle.m_(), paramBundle.n_(), paramBundle.c(), paramBundle.h());
    ((TextView)findViewById(2131689868)).setText(StringUtils.a(this, 2131165940, new Object[] { paramBundle.Z() }));
    ((TextView)findViewById(2131689869)).setText(StringUtils.a(this, 2131165942, new Object[] { getAppData().q().l() }));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    getHelper().h();
    hideLoadingDialog();
    as.a(paramYelpException.getMessageResource(), 0);
    switch (paramYelpException.getMessageResource())
    {
    default: 
      return;
    case 2131165339: 
    case 2131165353: 
      a();
    }
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
    {
      paramMenuItem = new i(this, (User)getIntent().getParcelableExtra("extra.user"), ((TextView)findViewById(2131689696)).getText().toString().trim());
      paramMenuItem.f(new Void[0]);
      getHelper().a(paramMenuItem);
      showLoadingDialog(paramMenuItem, 2131166547);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu.findItem(2131691015).setTitle(2131166542);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.SendFriendRequestForm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */