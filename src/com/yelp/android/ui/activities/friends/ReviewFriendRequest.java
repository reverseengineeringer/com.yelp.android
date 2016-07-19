package com.yelp.android.ui.activities.friends;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment.Acknowledgment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.m.a;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.k;
import com.yelp.android.ui.util.ap.b;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ReviewFriendRequest
  extends YelpActivity
  implements k
{
  private View a;
  private FriendRequest b;
  private String c;
  private final ApiRequest.b<List<FriendRequest>> d = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<FriendRequest> paramAnonymousList)
    {
      disableLoading();
      paramAnonymousApiRequest = paramAnonymousList.iterator();
      while (paramAnonymousApiRequest.hasNext())
      {
        paramAnonymousList = (FriendRequest)paramAnonymousApiRequest.next();
        if (paramAnonymousList.j().ae().equals(ReviewFriendRequest.a(ReviewFriendRequest.this)))
        {
          ReviewFriendRequest.a(ReviewFriendRequest.this, paramAnonymousList);
          ReviewFriendRequest.b(ReviewFriendRequest.this, paramAnonymousList);
        }
      }
      if (ReviewFriendRequest.b(ReviewFriendRequest.this) == null) {
        finish();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      if (isFinishing()) {
        return;
      }
      disableLoading();
      populateError(paramAnonymousYelpException);
    }
  };
  private final c.a e = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      paramAnonymousApiRequest = (FriendRequestAcknowledgment)paramAnonymousApiRequest;
      ReviewFriendRequest.a(ReviewFriendRequest.this, paramAnonymousApiRequest.b(), paramAnonymousApiRequest.d());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      if (isFinishing()) {
        return;
      }
      disableLoading();
      as.a(paramAnonymousYelpException.getMessage(ReviewFriendRequest.this), 0);
      findViewById(2131689868).performHapticFeedback(0, 1);
    }
  };
  
  private void a(FriendRequestAcknowledgment.Acknowledgment paramAcknowledgment, User paramUser)
  {
    hideLoadingDialog();
    if (isFinishing()) {
      return;
    }
    ActivityUserProfile.a locala = new ActivityUserProfile.a();
    c = b;
    if (paramAcknowledgment == FriendRequestAcknowledgment.Acknowledgment.APPROVE)
    {
      as.a(getString(2131165938, new Object[] { paramUser.Z() }), 0);
      setResult(-1, getIntent());
      AppData.b().q().p().e(1);
      d = 1;
    }
    for (;;)
    {
      locala.a(this);
      finish();
      return;
      if (paramAcknowledgment == FriendRequestAcknowledgment.Acknowledgment.IGNORE)
      {
        as.a(2131166003, 0);
        setResult(0, getIntent());
        d = 0;
      }
    }
  }
  
  private void a(FriendRequest paramFriendRequest)
  {
    User localUser = paramFriendRequest.j();
    if (!TextUtils.isEmpty(paramFriendRequest.k())) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        findViewById(2131689844).setVisibility(8);
      }
      Object localObject = AppData.b().q();
      ((TextView)findViewById(2131689868)).setText(StringUtils.a(this, 2131165940, new Object[] { ((co)localObject).l() }));
      localObject = (TextView)findViewById(2131689696);
      ((TextView)localObject).setText(paramFriendRequest.k());
      Linkify.addLinks((TextView)localObject, 15);
      ((TextView)localObject).setMovementMethod(LinkMovementMethod.getInstance());
      ((TextView)findViewById(2131689869)).setText(StringUtils.a(this, 2131165942, new Object[] { localUser.Z() }));
      new ap.b(a, false).a(a.getContext(), localUser.ad(), localUser.k_(), localUser.j_(), localUser.l_(), localUser.m_(), localUser.n_(), localUser.c(), localUser.h());
      return;
    }
  }
  
  private void a(FriendRequest paramFriendRequest, FriendRequestAcknowledgment.Acknowledgment paramAcknowledgment)
  {
    showLoadingDialog(new FriendRequestAcknowledgment(e, paramAcknowledgment, paramFriendRequest.j()).f(new Void[0]));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.FriendRequest;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return g.b(c);
  }
  
  public String getRequestIdForIri(a parama)
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
      c = b.j().ae();
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      setContentView(2130903103);
      a = findViewById(2131689867);
      a.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramAnonymousView.getContext();
          paramAnonymousView.startActivity(ActivityUserProfile.a(paramAnonymousView, ReviewFriendRequest.a(ReviewFriendRequest.this)));
        }
      });
      findViewById(2131689870).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ReviewFriendRequest.a(ReviewFriendRequest.this, ReviewFriendRequest.b(ReviewFriendRequest.this), FriendRequestAcknowledgment.Acknowledgment.IGNORE);
        }
      });
      findViewById(2131689713).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ReviewFriendRequest.a(ReviewFriendRequest.this, ReviewFriendRequest.b(ReviewFriendRequest.this), FriendRequestAcknowledgment.Acknowledgment.APPROVE);
        }
      });
      if (b == null) {
        break;
      }
      a(b);
      return;
      if (getIntent().getData() != null) {
        c = getIntent().getData().getLastPathSegment();
      }
    }
    p_();
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
  
  public void p_()
  {
    m localm = new m("user/requests/friends", Collections.singletonMap("user_id", c), d, new m.a("friend_requests", FriendRequest.CREATOR));
    localm.f(new Void[0]);
    enableLoading(localm);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */