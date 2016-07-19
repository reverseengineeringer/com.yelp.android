package com.yelp.android.ui.activities.tips;

import android.content.BroadcastReceiver;
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
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cj;
import com.yelp.android.appdata.webrequests.cj.a;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.compliments.Mode;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.compliments.a;
import com.yelp.android.ui.activities.photoviewer.TipMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.ui.widgets.UsersWhoLikedThisView;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;

public class TipComplimentsLikes
  extends YelpListActivity
  implements ApiRequest.b<cj.a>
{
  cj a;
  ArrayList<TipFeedback> b;
  ArrayList<Compliment> c;
  View d;
  private Tip e;
  private String f;
  private boolean g;
  private a h;
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString)
  {
    return a(paramContext, paramTip, paramString, false);
  }
  
  public static Intent a(Context paramContext, Tip paramTip, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, TipComplimentsLikes.class);
    paramContext.putExtra("tip", paramTip);
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
  
  private void b()
  {
    d = getLayoutInflater().inflate(2130903552, r(), false);
    f();
    r().addHeaderView(d);
  }
  
  private void f()
  {
    View localView = d.findViewById(2131690942);
    ((WebImageView)localView.findViewById(2131690799)).setImageUrl(e.n());
    ((TextView)localView.findViewById(2131690077)).setText(e.e());
    ((TextView)localView.findViewById(2131690801)).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, e.t()));
    ((TextView)localView.findViewById(2131690800)).setText(e.h());
    final Object localObject2 = getIntent().getStringExtra("key.title");
    final Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = e.o();
    }
    setTitle((CharSequence)localObject1);
    localObject1 = AppData.b().q();
    localView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(ActivityUserProfile.a(TipComplimentsLikes.this, TipComplimentsLikes.a(TipComplimentsLikes.this).b()));
      }
    });
    localObject2 = localView.findViewById(2131690941);
    if (e.m()) {}
    for (int i = 0;; i = 8)
    {
      ((View)localObject2).setVisibility(i);
      if (e.r() != null)
      {
        d.findViewById(2131690946).setVisibility(0);
        localObject2 = (WebImageView)d.findViewById(2131690947);
        ((WebImageView)localObject2).setImageUrl(e.r().s());
        ((WebImageView)localObject2).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            paramAnonymousView = TipMediaViewer.a(TipComplimentsLikes.this, TipComplimentsLikes.a(TipComplimentsLikes.this).r());
            startActivity(paramAnonymousView);
          }
        });
      }
      if (((co)localObject1).a(e.b())) {
        break;
      }
      ((LeftDrawableButton)d.findViewById(2131690944)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          startActivity(ActivityLogin.a(paramAnonymousView.getContext(), 2131165707, 2131166098, SendCompliment.a(paramAnonymousView.getContext(), TipComplimentsLikes.a(TipComplimentsLikes.this))));
        }
      });
      localObject2 = (LeftDrawableToggleButton)d.findViewById(2131690945);
      ((LeftDrawableToggleButton)localObject2).setChecked(e.g().c());
      ((LeftDrawableToggleButton)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (localObject1.d())
          {
            new em(TipComplimentsLikes.a(TipComplimentsLikes.this).a(), localObject2.isChecked()).f(new Void[0]);
            if (TipComplimentsLikes.a(TipComplimentsLikes.this).g().c())
            {
              TipComplimentsLikes.a(TipComplimentsLikes.this).g().b();
              paramAnonymousView = (TipFeedback)User.a(b);
              if (paramAnonymousView != null) {
                b.remove(paramAnonymousView);
              }
            }
            for (;;)
            {
              TipComplimentsLikes.b(TipComplimentsLikes.this).notifyDataSetChanged();
              TipComplimentsLikes.c(TipComplimentsLikes.this);
              new ObjectDirtyEvent(TipComplimentsLikes.a(TipComplimentsLikes.this), "com.yelp.android.tips.update").a(TipComplimentsLikes.this);
              return;
              TipComplimentsLikes.a(TipComplimentsLikes.this).g().a();
              paramAnonymousView = new TipFeedback(TipComplimentsLikes.a(TipComplimentsLikes.this), localObject1);
              b.add(paramAnonymousView);
            }
          }
          localObject2.toggle();
          localObject2.getContext().startActivity(ActivityLogin.a(TipComplimentsLikes.this, 2131165697, 2131166108));
        }
      });
      return;
    }
    d.findViewById(2131690943).setVisibility(8);
  }
  
  private void g()
  {
    registerDirtyEventReceiver("com.yelp.android.tips.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        TipComplimentsLikes.a(TipComplimentsLikes.this, (Tip)ObjectDirtyEvent.a(paramAnonymousIntent));
        TipComplimentsLikes.a(TipComplimentsLikes.this, TipComplimentsLikes.a(TipComplimentsLikes.this).a());
        TipComplimentsLikes.d(TipComplimentsLikes.this);
      }
    });
    registerDirtyEventReceiver("com.yelp.android.tips.delete", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if (((Tip)ObjectDirtyEvent.a(paramAnonymousIntent)).a().equals(TipComplimentsLikes.e(TipComplimentsLikes.this))) {
          finish();
        }
      }
    });
  }
  
  private void i()
  {
    r().setAdapter(h);
    h.a(c);
    r().f();
  }
  
  private void j()
  {
    UsersWhoLikedThisView localUsersWhoLikedThisView = (UsersWhoLikedThisView)d.findViewById(2131690613);
    localUsersWhoLikedThisView.a(e.g().c(), b, e.g().d());
    localUsersWhoLikedThisView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b.size() == 1)
        {
          startActivity(ActivityUserProfile.a(TipComplimentsLikes.this, ((TipFeedback)b.get(0)).k().p()));
          return;
        }
        startActivity(WhoLikedThisTip.a(TipComplimentsLikes.this, TipComplimentsLikes.a(TipComplimentsLikes.this).a(), TipComplimentsLikes.a(TipComplimentsLikes.this).q()));
      }
    });
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityUserProfile.a(this, ((Compliment)paramListView.getItemAtPosition(paramInt)).m().ae()));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cj.a parama)
  {
    c = b;
    b = a;
    if (e == null)
    {
      e = c;
      getIntent().putExtra("tip", e);
      b();
      disableLoading();
    }
    j();
    i();
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
      if (paramIntent.getBooleanExtra("tip_deleted", false))
      {
        setResult(-1, paramIntent);
        finish();
        return;
      }
      localTip = (Tip)paramIntent.getParcelableExtra("tip_updated");
    } while (localTip == null);
    e = localTip;
    ((TextView)d.findViewById(2131690077)).setText(e.e());
    setResult(-1, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    h = new a(null, Mode.LIST, null, false);
    e = ((Tip)getIntent().getParcelableExtra("tip"));
    if (e != null)
    {
      f = e.a();
      b();
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
      i();
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
      a = new cj(this, f);
      a.f(new Void[0]);
      if (e == null) {
        enableLoading(a);
      } else {
        r().setAdapter(h);
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if ((!g) && (e != null))
    {
      getMenuInflater().inflate(2131755047, paramMenu);
      paramMenu.findItem(2131690669).setIntent(ActivityBusinessPage.b(this, e.q()));
      boolean bool = getAppData().q().a(e.b());
      paramMenu.findItem(2131691041).setVisible(bool);
    }
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    as.a(getString(2131166694), 0);
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691041)
    {
      startActivity(WriteTip.a(this, e, e.q()));
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