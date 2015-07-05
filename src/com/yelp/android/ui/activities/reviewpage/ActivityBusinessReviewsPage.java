package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.util.bs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ActivityBusinessReviewsPage
  extends ActivityAbstractReviewPage
{
  protected ak k;
  protected ak l;
  protected ak m;
  protected HashSet<String> n;
  protected Locale o;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ArrayList<String> paramArrayList)
  {
    paramContext = new Intent(paramContext, ActivityBusinessReviewsPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putStringArrayListExtra("extra.translated_language_reviews", paramArrayList);
    return paramContext;
  }
  
  private void a(Collection<Locale> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Locale localLocale = (Locale)paramCollection.next();
      if (!b.containsKey(localLocale))
      {
        bi localbi = new bi();
        if (n.contains(localLocale.getLanguage())) {
          localbi.a(PanelReviewTranslate.TranslateState.TRANSLATED);
        }
        b.put(localLocale, localbi);
        f.add(localLocale);
      }
    }
  }
  
  private void c(Locale paramLocale, Collection<Locale> paramCollection)
  {
    Iterator localIterator = f.iterator();
    int i = 0;
    Locale localLocale;
    bi localbi;
    if (localIterator.hasNext())
    {
      localLocale = (Locale)localIterator.next();
      localbi = (bi)b.get(localLocale);
      if ((paramCollection.size() <= 1) || (paramLocale == localLocale)) {
        break label107;
      }
    }
    label107:
    for (int j = 2131166521;; j = 2131166523)
    {
      a.a(i, getString(j, new Object[] { localLocale.getDisplayLanguage(d) }), localbi);
      i += 1;
      break;
      return;
    }
  }
  
  protected Intent a(YelpBusinessReview paramYelpBusinessReview, ArrayList<YelpBusinessReview> paramArrayList)
  {
    if (k()) {
      return ActivitySearchedReviewsPager.a(this, paramArrayList, paramYelpBusinessReview, e.getDisplayName(), e.getId(), e.getCountry(), m(), l());
    }
    return ActivityReviewPager.a(this, e.getId(), e.getDisplayName(), e.getCountry(), paramArrayList, paramArrayList.indexOf(paramYelpBusinessReview), h, i, true);
  }
  
  protected void a(Bundle paramBundle)
  {
    ArrayList localArrayList = paramBundle.getParcelableArrayList("FollowingReviews");
    k.a(localArrayList);
    localArrayList = paramBundle.getParcelableArrayList("FriendsReviews");
    l.a(localArrayList);
    paramBundle = (YelpBusinessReview)paramBundle.getParcelable("YOUR REVIEW");
    if (paramBundle != null) {
      m.c(paramBundle);
    }
  }
  
  protected void a(SparseArray<ApiRequest<?, ?, ?>> paramSparseArray)
  {
    c = ((ApiRequest)paramSparseArray.get(0));
  }
  
  protected void a(ey paramey, YelpException paramYelpException)
  {
    if (!m.isEmpty()) {
      m.a(paramYelpException);
    }
    if (!k.isEmpty()) {
      k.a(paramYelpException);
    }
    if (!l.isEmpty()) {
      l.a(paramYelpException);
    }
  }
  
  protected void a(YelpBusinessReview paramYelpBusinessReview)
  {
    k.a(paramYelpBusinessReview);
    l.a(paramYelpBusinessReview);
    m.a(paramYelpBusinessReview);
  }
  
  protected void a(Locale paramLocale, Collection<Locale> paramCollection)
  {
    a.a(2131166527, getString(2131166527), m);
    a.a(2131492915, getString(2131166516), k);
    a.a(2131492916, getString(2131166517), l);
    a(paramCollection);
    c(paramLocale, paramCollection);
  }
  
  protected void b(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("FollowingReviews", new ArrayList(k.a()));
    paramBundle.putParcelableArrayList("FriendsReviews", new ArrayList(l.a()));
    if (m.isEmpty()) {}
    for (Object localObject = null;; localObject = m.a(0))
    {
      paramBundle.putParcelable("YOUR REVIEW", (Parcelable)localObject);
      return;
    }
  }
  
  public void b(ez paramez)
  {
    ArrayList localArrayList1 = new ArrayList(a);
    Object localObject = localArrayList1.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((YelpBusinessReview)((Iterator)localObject).next()).setLocale(c);
    }
    if (a.a(2131166527) == null) {
      a(paramez);
    }
    i = new ArrayList(d);
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    h = b;
    localObject = null;
    label235:
    label399:
    for (;;)
    {
      if (!localArrayList1.isEmpty())
      {
        if (getAppData().m().a(((YelpBusinessReview)localArrayList1.get(0)).getUserId())) {
          localObject = (YelpBusinessReview)localArrayList1.remove(0);
        }
        for (;;)
        {
          if (o != null) {
            break label399;
          }
          o = c;
          break;
          if (((YelpBusinessReview)localArrayList1.get(0)).isUserFollowed())
          {
            localArrayList2.add(localArrayList1.remove(0));
          }
          else
          {
            if (!((YelpBusinessReview)localArrayList1.get(0)).isUserFriend()) {
              break label235;
            }
            localArrayList3.add(localArrayList1.remove(0));
          }
        }
      }
      if (localObject != null)
      {
        m.c(localObject);
        m.notifyDataSetChanged();
      }
      if (!localArrayList2.isEmpty())
      {
        k.a(localArrayList2);
        k.notifyDataSetChanged();
      }
      if (!localArrayList3.isEmpty())
      {
        l.a(localArrayList3);
        l.notifyDataSetChanged();
      }
      if ((o != null) && (h.containsKey(o))) {
        h.put(o, Integer.valueOf(((Integer)h.get(o)).intValue() - m.getCount() - k.getCount() - l.getCount()));
      }
      a(localArrayList1, h, c);
      return;
    }
  }
  
  protected ApiRequest<?, ?, ?> c()
  {
    Locale localLocale = d;
    if (!f.isEmpty()) {
      localLocale = (Locale)f.iterator().next();
    }
    Object localObject = (bi)b.get(localLocale);
    int i = m.getCount() + k.getCount() + l.getCount();
    if (localObject != null)
    {
      i += ((bi)localObject).getCount();
      if (((bi)localObject).b()) {
        localObject = d.getLanguage();
      }
    }
    for (;;)
    {
      int j = Math.min(a.getCount() / 10 * 10 + 10, 50);
      return new ey(e.getId(), i, j, localLocale, (String)localObject, new g(this));
      localObject = null;
      continue;
      localObject = null;
    }
  }
  
  protected void f()
  {
    k = new ak();
    l = new ak();
    m = new ak();
  }
  
  protected void h()
  {
    super.h();
    if ((c instanceof ey)) {
      ((ey)c).setCallback(new g(this));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ArrayList localArrayList = getIntent().getStringArrayListExtra("extra.translated_language_reviews");
    n = new HashSet();
    if (localArrayList != null) {
      n.addAll(localArrayList);
    }
    super.onCreate(paramBundle);
    o = null;
    a(null);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131493354)
    {
      paramMenuItem = new HashMap(2);
      paramMenuItem.put("id", e.getId());
      paramMenuItem.put("source", "reviews_list");
      AppData.a(EventIri.BusinessReviewWrite, paramMenuItem);
      paramMenuItem = e.getReviewState();
      if (ReviewState.FINISHED_RECENTLY.equals(paramMenuItem)) {
        paramMenuItem = ReviewSource.XMoreReviewsEdit;
      }
      for (;;)
      {
        startActivity(ActivityReviewWrite.a(this, e, paramMenuItem));
        return true;
        if (ReviewState.FINISHED_NOT_RECENTLY.equals(paramMenuItem)) {
          paramMenuItem = ReviewSource.XMoreReviewsUpdate;
        } else {
          paramMenuItem = ReviewSource.XMoreReviewsMenu;
        }
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131493354);
    if (TextUtils.isEmpty(j))
    {
      paramMenu.setVisible(true);
      paramMenu.setTitle(e.getReviewState().getTextResourceForState());
      return true;
    }
    paramMenu.setVisible(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityBusinessReviewsPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */