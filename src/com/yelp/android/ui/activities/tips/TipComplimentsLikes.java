package com.yelp.android.ui.activities.tips;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cu;
import com.yelp.android.appdata.webrequests.cv;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.compliments.Mode;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.ui.widgets.UsersWhoLikedThisView;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public class TipComplimentsLikes
  extends YelpListActivity
  implements m<cv>
{
  cu a;
  ArrayList<TipFeedback> b;
  ArrayList<Compliment> c;
  View d;
  private Tip e;
  private String f;
  private boolean g;
  private com.yelp.android.ui.activities.compliments.a h;
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString)
  {
    return a(paramContext, paramTip, paramString, false);
  }
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, TipComplimentsLikes.class);
    paramContext.putExtra("key.tip", paramTip);
    paramContext.putExtra("key.title", paramString);
    paramContext.putExtra("key.hide_view_biz_button", paramBoolean);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, TipComplimentsLikes.class);
    paramContext.putExtra("key.tip_id", paramString1);
    paramContext.putExtra("key.title", paramString2);
    return paramContext;
  }
  
  private void c()
  {
    d = getLayoutInflater().inflate(2130903429, q(), false);
    f();
    q().addHeaderView(d);
  }
  
  private void f()
  {
    View localView = d.findViewById(2131494069);
    ((WebImageView)localView.findViewById(2131493957)).setImageUrl(e.getUserPhotoUrl());
    ((TextView)localView.findViewById(2131493961)).setText(e.getText());
    ((TextView)localView.findViewById(2131493959)).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, e.getTime()));
    ((TextView)localView.findViewById(2131493958)).setText(e.getUserName());
    Object localObject2 = getIntent().getStringExtra("key.title");
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = e.getBusinessName();
    }
    setTitle((CharSequence)localObject1);
    localObject1 = AppData.b().m();
    localView.setOnClickListener(new a(this));
    localObject2 = localView.findViewById(2131494068);
    if (e.isFirstTip()) {}
    for (int i = 0;; i = 8)
    {
      ((View)localObject2).setVisibility(i);
      cr.a(localView.findViewById(2131494066), cr.a(this, e), e);
      if (e.getPhoto() != null)
      {
        d.findViewById(2131494073).setVisibility(0);
        localObject2 = (WebImageView)d.findViewById(2131494074);
        ((WebImageView)localObject2).setImageUrl(e.getPhoto().getLargeUrl());
        ((WebImageView)localObject2).setOnClickListener(new b(this));
      }
      if (((dc)localObject1).a(e.getUserId())) {
        break;
      }
      ((LeftDrawableButton)d.findViewById(2131494071)).setOnClickListener(new c(this));
      localObject2 = (LeftDrawableToggleButton)d.findViewById(2131494072);
      ((LeftDrawableToggleButton)localObject2).setChecked(e.getFeedback().isLikedByUser());
      ((LeftDrawableToggleButton)localObject2).setOnClickListener(new d(this, (dc)localObject1, (LeftDrawableToggleButton)localObject2));
      return;
    }
    d.findViewById(2131494070).setVisibility(8);
  }
  
  private void g()
  {
    registerDirtyEventReceiver("com.yelp.android.tips.update", new e(this));
    registerDirtyEventReceiver("com.yelp.android.tips.delete", new f(this));
  }
  
  private void h()
  {
    q().setAdapter(h);
    h.a(c);
    q().f();
  }
  
  private void j()
  {
    UsersWhoLikedThisView localUsersWhoLikedThisView = (UsersWhoLikedThisView)d.findViewById(2131493785);
    localUsersWhoLikedThisView.a(e.getFeedback().isLikedByUser(), b, e.getFeedback().getPositiveFeedbackCount());
    localUsersWhoLikedThisView.setOnClickListener(new g(this));
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityUserProfile.a(this, ((Compliment)paramListView.getItemAtPosition(paramInt)).getSender().getId()));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cv paramcv)
  {
    c = b;
    b = a;
    if (e == null)
    {
      e = c;
      getIntent().putExtra("key.tip", e);
      c();
      disableLoading();
    }
    j();
    h();
    updateOptionsMenu();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ViewTipLikesCompliments;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    Tip localTip;
    do
    {
      do
      {
        do
        {
          return;
        } while (paramInt2 != -1);
        paramIntent = (Compliment)paramIntent.getExtras().getParcelable("extra.compliment");
        c.add(0, paramIntent);
        h.notifyDataSetChanged();
        return;
      } while (paramInt2 != -1);
      paramIntent.putExtra("changed entry id", getIntent().getStringExtra("changed entry id"));
      if (paramIntent.getBooleanExtra("did we delete it?", false))
      {
        setResult(-1, paramIntent);
        finish();
        return;
      }
      localTip = (Tip)paramIntent.getBundleExtra("bundle to be passed").getParcelable(TipFeedEntry.CONTENT_KEY);
    } while (localTip == null);
    e = localTip;
    ((TextView)d.findViewById(2131493961)).setText(e.getText());
    setResult(-1, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    h = new com.yelp.android.ui.activities.compliments.a(null, Mode.LIST, null, false);
    e = ((Tip)getIntent().getParcelableExtra("key.tip"));
    if (e != null)
    {
      f = e.getId();
      c();
      g = getIntent().getBooleanExtra("key.hide_view_biz_button", false);
      if (paramBundle == null) {
        break label178;
      }
      b = paramBundle.getParcelableArrayList("key.likes");
      c = paramBundle.getParcelableArrayList("key.compliments");
      label100:
      if ((b.isEmpty()) || (c.isEmpty())) {
        break label203;
      }
      j();
      h();
    }
    for (;;)
    {
      g();
      return;
      if (getIntent().hasExtra("key.tip_id"))
      {
        f = getIntent().getStringExtra("key.tip_id");
        break;
      }
      f = getIntent().getData().getLastPathSegment();
      break;
      label178:
      b = new ArrayList();
      c = new ArrayList();
      break label100;
      label203:
      a = new cu(this, f);
      a.execute(new Void[0]);
      if (e == null) {
        enableLoading(a);
      } else {
        q().setAdapter(h);
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if ((!g) && (e != null))
    {
      getMenuInflater().inflate(2131755042, paramMenu);
      paramMenu.findItem(2131493833).setIntent(ActivityBusinessPage.a(this, e.getBusinessId()));
      boolean bool = getAppData().m().a(e.getUserId());
      paramMenu.findItem(2131494166).setVisible(bool);
    }
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(getString(2131166715), 0);
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494166)
    {
      startActivity(WriteTip.a(this, e, e.getBusinessId()));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("key.likes", b);
    paramBundle.putParcelableArrayList("key.compliments", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */