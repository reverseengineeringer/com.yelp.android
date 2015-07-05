package com.yelp.android.ui.activities.friends;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment.Acknowledgment;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.q;
import com.yelp.android.av.i;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.j;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cn;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class ReviewFriendRequest
  extends YelpActivity
  implements com.yelp.android.ui.p
{
  private View a;
  private FriendRequest b;
  private String c;
  private final m<List<FriendRequest>> d = new w(this);
  private final i e = new x(this);
  
  private void a(FriendRequestAcknowledgment.Acknowledgment paramAcknowledgment, User paramUser)
  {
    hideLoadingDialog();
    if (isFinishing()) {
      return;
    }
    j localj = new j();
    c = b;
    if (paramAcknowledgment == FriendRequestAcknowledgment.Acknowledgment.APPROVE)
    {
      cr.a(getString(2131165861, new Object[] { paramUser.getFirstName() }), 0);
      setResult(-1, getIntent());
      AppData.b().m().s().addFriendCount(1);
      d = 1;
    }
    for (;;)
    {
      localj.a(this);
      finish();
      return;
      if (paramAcknowledgment == FriendRequestAcknowledgment.Acknowledgment.IGNORE)
      {
        cr.a(2131165936, 0);
        setResult(0, getIntent());
        d = 0;
      }
    }
  }
  
  private void a(FriendRequest paramFriendRequest)
  {
    User localUser = paramFriendRequest.getSender();
    if (!TextUtils.isEmpty(paramFriendRequest.getMessage())) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        findViewById(2131493170).setVisibility(8);
      }
      Object localObject = AppData.b().m();
      ((TextView)findViewById(2131493200)).setText(StringUtils.a(this, 2131165863, new Object[] { ((dc)localObject).q() }));
      localObject = (TextView)findViewById(2131493033);
      ((TextView)localObject).setText(paramFriendRequest.getMessage());
      Linkify.addLinks((TextView)localObject, 15);
      ((TextView)localObject).setMovementMethod(LinkMovementMethod.getInstance());
      ((TextView)findViewById(2131493201)).setText(StringUtils.a(this, 2131165865, new Object[] { localUser.getFirstName() }));
      new cn(a, false).a(a.getContext(), localUser.getName(), localUser.getFriendCount(), localUser.getReviewCount(), localUser.getPhotoCount(), localUser.getVideoCount(), localUser.getMediaCount(), localUser.getUserPhotoUrl(), localUser.isEliteUser());
      return;
    }
  }
  
  private void a(FriendRequest paramFriendRequest, FriendRequestAcknowledgment.Acknowledgment paramAcknowledgment)
  {
    showLoadingDialog(new FriendRequestAcknowledgment(e, paramAcknowledgment, paramFriendRequest.getSender()).execute(new Void[0]));
  }
  
  public void a_()
  {
    com.yelp.android.appdata.webrequests.p localp = new com.yelp.android.appdata.webrequests.p("user/requests/friends", Collections.singletonMap("user_id", c), d, new q("friend_requests", FriendRequest.CREATOR));
    localp.execute(new Void[0]);
    enableLoading(localp);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.FriendRequest;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(c);
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b = ((FriendRequest)getIntent().getParcelableExtra("extra.friendRequest"));
    FriendRequestAcknowledgment.Acknowledgment localAcknowledgment = (FriendRequestAcknowledgment.Acknowledgment)getIntent().getSerializableExtra("extra.acknowledgement");
    if ((b != null) && (localAcknowledgment != null))
    {
      setTheme(16973840);
      super.onCreate(paramBundle);
      a(b, localAcknowledgment);
      return;
    }
    if (b != null) {
      c = b.getSender().getId();
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      setContentView(2130903092);
      a = findViewById(2131493199);
      a.setOnClickListener(new t(this));
      findViewById(2131493203).setOnClickListener(new u(this));
      findViewById(2131493204).setOnClickListener(new v(this));
      if (b == null) {
        break;
      }
      a(b);
      return;
      if (getIntent().getData() != null) {
        c = getIntent().getData().getLastPathSegment();
      }
    }
    a_();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908289) {
      if (paramMenuItem.isChecked()) {
        break label37;
      }
    }
    label37:
    for (boolean bool = true;; bool = false)
    {
      paramMenuItem.setChecked(bool);
      return super.onOptionsItemSelected(paramMenuItem);
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.findItem(16908289);
    if (localMenuItem != null) {
      if (!localMenuItem.isChecked()) {
        break label41;
      }
    }
    label41:
    for (int i = 17301520;; i = 17301519)
    {
      localMenuItem.setIcon(i);
      return super.onPrepareOptionsMenu(paramMenu);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */