package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.r;
import com.yelp.android.appdata.webrequests.s;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.feed.u;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.YelpLog;
import com.yelp.android.webimageview.ImageLoader;
import java.util.List;

public class ActivityBadge
  extends YelpActivity
  implements u
{
  private CurrentUserFeedFragment a;
  private View b;
  private View c;
  private r d;
  private final m<List<FeedEntry>> e = new c(this);
  private final m<Badge> f = new d(this);
  
  public static Intent a(Context paramContext, Badge paramBadge, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramContext = new Intent(paramContext, ActivityBadge.ActivityBadgeDialog.class);
      paramContext.putExtra("dialog", paramBoolean);
    }
    for (;;)
    {
      paramContext.putExtra("badge", paramBadge);
      return paramContext;
      paramContext = new Intent(paramContext, ActivityBadge.class);
    }
  }
  
  public ApiRequest<?, ?, ?> a(int paramInt1, int paramInt2)
  {
    Object localObject = (Badge)getIntent().getParcelableExtra("badge");
    if (localObject != null) {}
    for (localObject = ((Badge)localObject).getId();; localObject = getIntent().getData().getLastPathSegment()) {
      return new s((String)localObject, e).execute(new Void[0]);
    }
  }
  
  public void a(Badge paramBadge)
  {
    TextView localTextView = (TextView)findViewById(2131493036);
    String str = paramBadge.getTitle();
    Object localObject = str;
    if (str == null) {
      localObject = "";
    }
    if (getIntent().getBooleanExtra("dialog", false)) {
      localTextView.setText((CharSequence)localObject);
    }
    for (;;)
    {
      localObject = (WebImageView)b.findViewById(2131493698);
      if (!cp.a(this, (ImageView)localObject, paramBadge.getImagePath()))
      {
        c.setVisibility(0);
        ImageLoader.start(paramBadge.getImageUrl(), new b(this, localObject), true);
      }
      if (paramBadge.getDescription() == null) {
        break;
      }
      ((TextView)b.findViewById(2131493700)).setText(paramBadge.getDescription());
      return;
      localTextView.setVisibility(8);
      setTitle((CharSequence)localObject);
    }
    ((TextView)b.findViewById(2131493700)).setText("");
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BadgeDetails;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    a = ((CurrentUserFeedFragment)getSupportFragmentManager().findFragmentById(2131493038));
    b = getLayoutInflater().inflate(2130903269, a.m(), false);
    a.m().addHeaderView(b);
    a.a(FeedType.ME);
    a.a(this);
    setResult(-1, getIntent());
    c = b.findViewById(2131493699);
    paramBundle = getIntent();
    Notifier.NotificationType localNotificationType = (Notifier.NotificationType)paramBundle.getSerializableExtra("extra_notification_type");
    if (paramBundle.hasExtra("badge")) {
      a((Badge)paramBundle.getParcelableExtra("badge"));
    }
    for (;;)
    {
      if ((getIntent().getBooleanExtra("dialog", false)) || (d != null))
      {
        paramBundle = (Button)findViewById(2131493037);
        paramBundle.setVisibility(0);
        paramBundle.setOnClickListener(new a(this));
      }
      return;
      if ((localNotificationType == Notifier.NotificationType.Badge) && ((d == null) || (!d.isFetching())))
      {
        paramBundle = paramBundle.getData();
        AppData.b().k().a(new o(paramBundle));
        d = new r(paramBundle.getLastPathSegment(), f);
        d.execute(new String[0]);
        showLoadingDialog();
      }
      else
      {
        YelpLog.e(this, "Activity started without a badge extra");
        finish();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBadge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */