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
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.e;
import com.yelp.android.av.i;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.util.cn;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;

public class SendFriendRequestForm
  extends YelpActivity
  implements i
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
    localUser.setFriendRequestPending(true);
    localIntent.putExtra("extra.user", localUser);
    setResult(-1, localIntent);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    hideLoadingDialog();
    cr.a(2131166456, 0);
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
    setContentView(2130903113);
    paramBundle = (User)getIntent().getParcelableExtra("extra.user");
    View localView = findViewById(2131493199);
    new cn(localView, false).a(localView.getContext(), paramBundle.getName(), paramBundle.getFriendCount(), paramBundle.getReviewCount(), paramBundle.getPhotoCount(), paramBundle.getVideoCount(), paramBundle.getMediaCount(), paramBundle.getUserPhotoUrl(), paramBundle.isEliteUser());
    ((TextView)findViewById(2131493200)).setText(StringUtils.a(this, 2131165863, new Object[] { paramBundle.getFirstName() }));
    ((TextView)findViewById(2131493201)).setText(StringUtils.a(this, 2131165865, new Object[] { getAppData().m().q() }));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    getHelper().h();
    hideLoadingDialog();
    cr.a(paramYelpException.getMessageResource(), 0);
    switch (paramYelpException.getMessageResource())
    {
    default: 
      return;
    case 2131165203: 
    case 2131165217: 
      a();
    }
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      paramMenuItem = new e(this, (User)getIntent().getParcelableExtra("extra.user"), ((TextView)findViewById(2131493033)).getText().toString().trim());
      paramMenuItem.execute(new Void[0]);
      getHelper().a(paramMenuItem);
      showLoadingDialog(paramMenuItem, 2131166547);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu.findItem(2131494141).setTitle(2131166542);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.SendFriendRequestForm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */