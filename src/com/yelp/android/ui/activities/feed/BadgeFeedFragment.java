package com.yelp.android.ui.activities.feed;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.o;
import com.yelp.android.appdata.webrequests.p;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.FeedItem;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.util.ap;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.webimageview.ImageLoader;
import java.util.List;

public class BadgeFeedFragment
  extends CurrentUserFeedFragment
{
  private Badge j;
  private YelpCheckIn k;
  private Uri l;
  private a m;
  private ap n;
  private o o;
  private p p;
  private View q;
  private View r;
  private final ApiRequest.b<List<FeedItem>> s = new BadgeFeedFragment.1(this);
  private final ApiRequest.b<Badge> t = new BadgeFeedFragment.2(this);
  
  public static BadgeFeedFragment a(Badge paramBadge, YelpCheckIn paramYelpCheckIn, Uri paramUri)
  {
    BadgeFeedFragment localBadgeFeedFragment = new BadgeFeedFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("badge", paramBadge);
    localBundle.putParcelable("check_in", paramYelpCheckIn);
    localBundle.putParcelable("data", paramUri);
    localBadgeFeedFragment.setArguments(localBundle);
    return localBadgeFeedFragment;
  }
  
  private void a(Badge paramBadge)
  {
    FragmentActivity localFragmentActivity;
    TextView localTextView;
    Object localObject;
    if (isAdded())
    {
      localFragmentActivity = getActivity();
      j = paramBadge;
      localTextView = (TextView)localFragmentActivity.findViewById(2131689714);
      String str = paramBadge.l();
      localObject = str;
      if (str == null) {
        localObject = "";
      }
      m.a(paramBadge);
      if (k == null) {
        break label199;
      }
      localTextView.setText((CharSequence)localObject);
      localObject = (WebImageView)q.findViewById(2131690522);
      if (!ar.a(localFragmentActivity, (ImageView)localObject, paramBadge.g()))
      {
        r.setVisibility(0);
        ImageLoader.start(paramBadge.i(), new BadgeFeedFragment.b(r, (WebImageView)localObject), true);
      }
      if (paramBadge.j() == null) {
        break label215;
      }
      ((TextView)q.findViewById(2131690524)).setText(paramBadge.j());
    }
    for (;;)
    {
      if (h())
      {
        ((TextView)q.findViewById(2131690525)).setText(2131165807);
        n = new ap();
        n.a(true);
        a(n);
      }
      return;
      label199:
      localTextView.setVisibility(8);
      localFragmentActivity.setTitle((CharSequence)localObject);
      break;
      label215:
      ((TextView)q.findViewById(2131690524)).setText("");
    }
  }
  
  private boolean h()
  {
    return (j != null) && (TextUtils.equals(j.e(), "yelp_bff"));
  }
  
  public void b()
  {
    if ((p == null) || (!p.u())) {
      if (j != null) {
        break label61;
      }
    }
    label61:
    for (String str = l.getLastPathSegment();; str = j.k())
    {
      p = new p(str, s);
      p.f(new Void[0]);
      return;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    m = ((a)paramActivity);
  }
  
  public void onPause()
  {
    super.onPause();
    a("badge_feed", p);
    a("badge_details", o);
  }
  
  public void onResume()
  {
    super.onResume();
    p = ((p)a("badge_feed", p, s));
    o = ((o)a("badge_details", o, t));
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    j = ((Badge)getArguments().getParcelable("badge"));
    k = ((YelpCheckIn)getArguments().getParcelable("check_in"));
    l = ((Uri)getArguments().getParcelable("data"));
    paramView = m();
    q = getActivity().getLayoutInflater().inflate(2130903358, paramView, false);
    paramView.addHeaderView(q);
    a(FeedType.ME);
    r = q.findViewById(2131690523);
    if ((Notifier.NotificationType)getActivity().getIntent().getSerializableExtra("extra_notification_type") == Notifier.NotificationType.Badge)
    {
      AppData.b().k().a(new n(l));
      o = new o(l.getLastPathSegment(), t);
      o.f(new String[0]);
      D();
    }
    while (k != null)
    {
      q.findViewById(2131690525).setVisibility(8);
      n();
      return;
      a(j);
    }
    ((Toolbar)getActivity().findViewById(2131690378)).setNavigationIcon(2130838971);
  }
  
  public static abstract interface a
  {
    public abstract void a(Badge paramBadge);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.BadgeFeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */