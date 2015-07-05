package com.yelp.android.ui.panels.businesspage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.serializable.w;
import com.yelp.android.services.r;
import com.yelp.android.services.s;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.util.PullDownListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.k;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

@SuppressLint({"ViewConstructor"})
public class b
  extends k
{
  private final ViewPager a = (ViewPager)getPanel().findViewById(2131493714);
  private final TextView b;
  private final TextView c;
  private final TextView d;
  private final TextView e;
  private final TextView f;
  private final TextView g;
  private final TextView h;
  private final TextView i;
  private final TwoTierButton j;
  private final TwoTierButton k;
  private Map<View, int[]> l;
  private final LeftDrawableButton m;
  
  public b(Context paramContext, com.yelp.android.ui.widgets.o paramo, PullDownListView paramPullDownListView)
  {
    super(paramContext, 2130903271, 2130903272, paramo, paramPullDownListView);
    a.setOnTouchListener(new c(this));
    b = ((TextView)getPanel().findViewById(2131493716));
    c = ((TextView)getPanel().findViewById(2131493719));
    d = ((TextView)getPanel().findViewById(2131493625));
    e = ((TextView)getPanel().findViewById(2131493230));
    f = ((TextView)getPanel().findViewById(2131493721));
    g = ((TextView)getPanel().findViewById(2131493717));
    h = ((TextView)getPanel().findViewById(2131493146));
    i = ((TextView)getPanel().findViewById(2131493722));
    j = ((TwoTierButton)getPanel().findViewById(2131493351));
    k = ((TwoTierButton)getPanel().findViewById(2131493353));
    m = ((LeftDrawableButton)getPanel().findViewById(2131493354));
    if (!Features.video_capture.isEnabled()) {
      ((TwoTierButton)getPanel().findViewById(2131493349)).getLabel().setText(2131165338);
    }
    a();
  }
  
  private void a()
  {
    TwoTierButton localTwoTierButton = (TwoTierButton)getPanel().findViewById(2131493349);
    l = new HashMap(3);
    l.put(j, new int[] { 2131493350, 2131493352 });
    l.put(k, new int[] { 2131493352 });
    l.put(localTwoTierButton, new int[] { 2131493350 });
    d locald = new d(this);
    j.setButtonStateChangedListener(locald);
    k.setButtonStateChangedListener(locald);
    localTwoTierButton.setButtonStateChangedListener(locald);
  }
  
  private void a(ReviewState paramReviewState, int paramInt)
  {
    LeftDrawableButton localLeftDrawableButton = m;
    localLeftDrawableButton.setTextColor(getResources().getColor(2131361907));
    int i1 = 2130837855;
    int n = i1;
    if (paramReviewState != null)
    {
      n = i1;
      if (paramReviewState != ReviewState.NOT_STARTED) {
        switch (paramInt)
        {
        default: 
          n = i1;
        }
      }
    }
    for (;;)
    {
      m.setImage(n);
      return;
      localLeftDrawableButton.setTextColor(getResources().getColor(2131361955));
      n = 2130837856;
      continue;
      localLeftDrawableButton.setTextColor(getResources().getColor(2131361958));
      n = 2130837857;
      continue;
      localLeftDrawableButton.setTextColor(getResources().getColor(2131361957));
      n = 2130837858;
      continue;
      localLeftDrawableButton.setTextColor(getResources().getColor(2131361951));
      n = 2130837859;
      continue;
      localLeftDrawableButton.setTextColor(getResources().getColor(2131361950));
      n = 2130837860;
    }
  }
  
  private void a(int... paramVarArgs)
  {
    int i1 = paramVarArgs.length;
    int n = 0;
    while (n < i1)
    {
      findViewById(paramVarArgs[n]).setPressed(true);
      n += 1;
    }
  }
  
  private void b(int... paramVarArgs)
  {
    int i1 = paramVarArgs.length;
    int n = 0;
    while (n < i1)
    {
      findViewById(paramVarArgs[n]).setPressed(false);
      n += 1;
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    m.setText(getContext().getString(paramYelpBusiness.getReviewState().getTextResourceForState()));
    a(paramYelpBusiness.getReviewState(), paramYelpBusiness.getUserReviewRating());
  }
  
  public void a(YelpBusiness paramYelpBusiness, PullDownListView paramPullDownListView)
  {
    Context localContext = getContext();
    Resources localResources = localContext.getResources();
    Object localObject = null;
    List localList = paramYelpBusiness.getPhotos();
    if (localList.size() > 0) {
      localObject = ((Photo)localList.get(0)).getLargeUrl();
    }
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      setPulledPhotoUrl((String)localObject);
      a(paramPullDownListView);
    }
    b.setText(paramYelpBusiness.getDisplayName());
    paramPullDownListView = paramYelpBusiness.getAlternateNameString(localContext);
    int n;
    if (TextUtils.isEmpty(paramPullDownListView))
    {
      c.setVisibility(8);
      n = paramYelpBusiness.getReviewCount();
      paramPullDownListView = localResources.getQuantityString(2131623970, n, new Object[] { Integer.valueOf(n) });
      d.setText(paramPullDownListView);
      cp.a(d, paramYelpBusiness.getAvgRating());
      paramPullDownListView = paramYelpBusiness.getCategories();
      if (paramPullDownListView.isEmpty()) {
        break label449;
      }
      e.setText(StringUtils.a(", ", paramPullDownListView, new w()));
      e.setVisibility(0);
      label189:
      paramPullDownListView = AppData.b().n().c();
      if ((!paramYelpBusiness.isLocationAccurate()) || (!com.yelp.android.util.o.a(paramPullDownListView)) || (paramYelpBusiness.getDistance(paramPullDownListView) >= 250.0D)) {
        break label461;
      }
      g.setText(paramYelpBusiness.getDistanceFormatted(paramPullDownListView, localContext, StringUtils.Format.ABBREVIATED));
      g.setContentDescription(paramYelpBusiness.getDistanceFormatted(paramPullDownListView, localContext, StringUtils.Format.VERBOSE));
      g.setVisibility(0);
      label267:
      n = paramYelpBusiness.getPrice();
      if (n <= 0) {
        break label473;
      }
      paramPullDownListView = AppData.b().g();
      h.setText(paramYelpBusiness.getLocalizedPrice());
      h.setContentDescription(paramPullDownListView.a(localContext, n, paramYelpBusiness.getCountry()));
      h.setVisibility(0);
      label320:
      paramPullDownListView = paramYelpBusiness.getHours();
      localObject = paramYelpBusiness.getTimeZone();
      paramPullDownListView = r.a(localContext, (YelpHoursPair[])paramPullDownListView.toArray(new YelpHoursPair[0]), (TimeZone)localObject);
      if ((!paramPullDownListView.a()) || (paramYelpBusiness.isClosed())) {
        break label803;
      }
      localObject = paramPullDownListView.b();
      if (!paramPullDownListView.h()) {
        break label485;
      }
      f.setText(localResources.getString(2131165428));
      i.setTextColor(localResources.getColor(2131361931));
      i.setText(localResources.getString(2131165429));
    }
    for (;;)
    {
      a(paramYelpBusiness);
      return;
      c.setText(paramPullDownListView);
      c.setVisibility(0);
      break;
      label449:
      e.setVisibility(8);
      break label189;
      label461:
      g.setVisibility(8);
      break label267;
      label473:
      h.setVisibility(8);
      break label320;
      label485:
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        if (paramPullDownListView.d())
        {
          n = (int)paramPullDownListView.e();
          f.setText(localResources.getQuantityString(2131623939, n, new Object[] { Integer.valueOf(n) }));
          f.setTextColor(localResources.getColor(2131361931));
        }
        for (;;)
        {
          f.setVisibility(0);
          i.setVisibility(8);
          break;
          f.setText(localResources.getString(2131165422));
          f.setTextColor(localResources.getColor(2131361970));
        }
      }
      f.setText(String.format(localResources.getString(2131165933), new Object[] { localObject }));
      f.setVisibility(0);
      if (paramPullDownListView.c())
      {
        i.setTextColor(localResources.getColor(2131361931));
        if (paramPullDownListView.d())
        {
          n = (int)paramPullDownListView.e();
          i.setText(localResources.getQuantityString(2131623939, n, new Object[] { Integer.valueOf(n) }));
        }
      }
      for (;;)
      {
        i.setVisibility(0);
        break;
        i.setText(localResources.getString(2131165429));
        continue;
        i.setTextColor(localResources.getColor(2131361970));
        if (paramPullDownListView.f())
        {
          n = (int)paramPullDownListView.g();
          i.setText(localResources.getQuantityString(2131623938, n, new Object[] { Integer.valueOf(n) }));
        }
        else
        {
          i.setText(localResources.getString(2131165421));
        }
      }
      label803:
      f.setVisibility(8);
      i.setVisibility(8);
    }
  }
  
  public void a(boolean paramBoolean, YelpCheckIn paramYelpCheckIn)
  {
    if (paramBoolean)
    {
      paramYelpCheckIn = paramYelpCheckIn.getLocationRankTitle();
      int n;
      switch (e.a[paramYelpCheckIn.ordinal()])
      {
      default: 
        n = 2130837748;
      }
      for (;;)
      {
        a(true, j, n, 2131165495, paramYelpCheckIn.getRankColor());
        return;
        n = 2130838509;
        continue;
        n = 2130838293;
      }
    }
    a(false, j, 2130837853, 2131165301, 2131361907);
  }
  
  protected void a(boolean paramBoolean, TwoTierButton paramTwoTierButton, int paramInt1, int paramInt2, int paramInt3)
  {
    Resources localResources = getContext().getResources();
    TextView localTextView1 = paramTwoTierButton.getValue();
    TextView localTextView2 = paramTwoTierButton.getLabel();
    localTextView1.setCompoundDrawablesWithIntrinsicBounds(paramInt1, 0, 0, 0);
    localTextView2.setTextColor(localResources.getColor(paramInt3));
    localTextView2.setText(localResources.getString(paramInt2));
    paramTwoTierButton.setChecked(paramBoolean);
  }
  
  public ViewPager getAlertsPager()
  {
    return a;
  }
  
  public void setBookmarkChecked(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a(true, k, 2130837663, 2131165414, 2131361970);
      return;
    }
    a(false, k, 2130837852, 2131165300, 2131361907);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */