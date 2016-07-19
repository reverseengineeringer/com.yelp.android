package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.util.ArrayMap;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.feed.BadgeFeedFragment;
import com.yelp.android.ui.activities.feed.BadgeFeedFragment.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.d;
import com.yelp.android.util.p;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ActivityBadge
  extends YelpActivity
  implements BadgeFeedFragment.a
{
  private List<ShareRequest.ShareType> a;
  private ToggleButton b;
  private ToggleButton c;
  private Badge d;
  private final View.OnClickListener e = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = AppData.b().f();
      paramAnonymousView.e(ActivityBadge.a(ActivityBadge.this).isChecked());
      paramAnonymousView.f(ActivityBadge.b(ActivityBadge.this).isChecked());
      ActivityBadge.a(ActivityBadge.this, p.a(null, ActivityBadge.a(ActivityBadge.this), ActivityBadge.b(ActivityBadge.this)));
      if (ActivityBadge.c(ActivityBadge.this).size() > 0)
      {
        ActivityBadge.d(ActivityBadge.this);
        if (!p.a(ActivityBadge.this, AppData.b().q().p(), ActivityBadge.c(ActivityBadge.this)))
        {
          startService(ShareService.a(ActivityBadge.this, ShareService.ShareObjectType.BADGE, ((Badge)getIntent().getParcelableExtra("extra.badge")).k(), ActivityBadge.c(ActivityBadge.this), getIntent().getStringExtra("extra.check_in")));
          finish();
        }
        return;
      }
      finish();
    }
  };
  
  public static Intent a(Context paramContext, Badge paramBadge)
  {
    return new Intent(paramContext, ActivityBadge.class).putExtra("extra.badge", paramBadge);
  }
  
  public static Intent a(Context paramContext, Badge paramBadge, YelpCheckIn paramYelpCheckIn)
  {
    paramContext = new Intent(paramContext, ActivityBadgeDialog.class);
    paramContext.putExtra("extra.badge", paramBadge);
    paramContext.putExtra("extra.check_in", paramYelpCheckIn);
    return paramContext;
  }
  
  private void a()
  {
    Iterator localIterator = a.iterator();
    ShareRequest.ShareType localShareType;
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localShareType = (ShareRequest.ShareType)localIterator.next();
        if (localShareType != ShareRequest.ShareType.YELP)
        {
          localObject = (YelpCheckIn)getIntent().getParcelableExtra("extra.check_in");
          if (localObject == null) {
            break label172;
          }
          if ((((YelpCheckIn)localObject).o() != null) && ((((YelpCheckIn)localObject).o().contains(ShareRequest.ShareType.FACEBOOK)) || (((YelpCheckIn)localObject).o().contains(ShareRequest.ShareType.TWITTER)))) {
            bool = true;
          }
        }
      }
    }
    for (;;)
    {
      localObject = new ArrayMap();
      ((ArrayMap)localObject).put("award_type", "Badge");
      ((ArrayMap)localObject).put("award_title", d.l());
      ((ArrayMap)localObject).put("social_network", localShareType.toString());
      ((ArrayMap)localObject).put("previous_share", Boolean.valueOf(bool));
      AppData.a(EventIri.AwardShare, (Map)localObject);
      break;
      bool = false;
      continue;
      return;
      label172:
      bool = false;
    }
  }
  
  private void a(String paramString)
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("award_type", "Badge");
    localArrayMap.put("award_title", paramString);
    AppData.a(ViewIri.Award, localArrayMap);
  }
  
  public void a(Badge paramBadge)
  {
    d = paramBadge;
    a(d.l());
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BadgeDetails;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1005) && (paramInt2 == -1)) {
      startService(ShareService.a(this, ShareService.ShareObjectType.BADGE, ((Badge)getIntent().getParcelableExtra("extra.badge")).k(), a, ((YelpCheckIn)getIntent().getParcelableExtra("extra.check_in")).z()));
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    paramBundle = (YelpCheckIn)getIntent().getParcelableExtra("extra.check_in");
    if ((BadgeFeedFragment)getSupportFragmentManager().a("badge_feed") == null)
    {
      localObject = BadgeFeedFragment.a((Badge)getIntent().getParcelableExtra("extra.badge"), paramBundle, getIntent().getData());
      getSupportFragmentManager().a().b(2131689720, (Fragment)localObject, "badge_feed").a();
    }
    setResult(-1, getIntent());
    Object localObject = AppData.b().f();
    if (paramBundle != null)
    {
      b = ((ToggleButton)findViewById(2131689718));
      c = ((ToggleButton)findViewById(2131689717));
      b.setChecked(((c)localObject).q());
      c.setChecked(((c)localObject).r());
      findViewById(2131689715).setOnClickListener(e);
      return;
    }
    findViewById(2131689715).setVisibility(8);
    findViewById(2131689716).setVisibility(8);
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    a = d.a(paramBundle, "share_types", ShareRequest.ShareType.values());
    d = ((Badge)paramBundle.getParcelable("extra.badge"));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    d.a(paramBundle, "share_types", a);
    paramBundle.putParcelable("extra.badge", d);
  }
  
  public static class ActivityBadgeDialog
    extends ActivityBadge
  {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBadge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */