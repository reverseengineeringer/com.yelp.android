package com.yelp.android.ui.util;

import android.content.Context;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.MenuItem;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentableItemType;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.ActivityCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.k;

public class ab
{
  public static MenuItem a(Context paramContext, ContextMenu paramContextMenu, YelpBusinessReview paramYelpBusinessReview)
  {
    paramYelpBusinessReview = paramYelpBusinessReview.O();
    paramContextMenu = paramContextMenu.setHeaderIcon(2130837646);
    paramContext = StringUtils.a(paramContext, 2131165728, new Object[] { paramYelpBusinessReview });
    paramContextMenu = paramContextMenu.add(paramContext);
    paramContextMenu.setTitleCondensed(paramContext.toString());
    return paramContextMenu;
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, BusinessSearchResult paramBusinessSearchResult)
  {
    YelpBusiness localYelpBusiness = paramBusinessSearchResult.a();
    paramContextMenu.add(2131165725).setIntent(ActivityBusinessPage.a(paramContext, paramBusinessSearchResult, null));
    c(paramContext, paramContextMenu, localYelpBusiness);
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, CheckIn paramCheckIn)
  {
    if ((paramCheckIn instanceof YelpCheckIn)) {
      a(paramContext, paramContextMenu, ((YelpCheckIn)paramCheckIn).i(), paramCheckIn.a());
    }
    b(paramContext, paramContextMenu, paramCheckIn.d());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, Compliment paramCompliment, String paramString, boolean paramBoolean)
  {
    if (paramCompliment.j() == Compliment.ComplimentableItemType.REVIEW)
    {
      a(paramContext, paramContextMenu, paramCompliment.n(), paramString, paramBoolean, paramCompliment.o(), paramCompliment.p());
      b(paramContext, paramContextMenu, paramCompliment.o(), paramCompliment.p());
    }
    if (paramCompliment.j() == Compliment.ComplimentableItemType.BIZ_PHOTO) {
      b(paramContext, paramContextMenu, paramCompliment.o(), paramCompliment.p());
    }
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, User paramUser)
  {
    a(paramContext, paramContextMenu, paramUser.ae(), paramUser.ad());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, YelpBusiness paramYelpBusiness)
  {
    paramContextMenu.add(2131165725).setIntent(ActivityBusinessPage.b(paramContext, paramYelpBusiness));
    c(paramContext, paramContextMenu, paramYelpBusiness);
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2)
  {
    paramString2 = StringUtils.a(paramContext, 2131165727, new Object[] { paramString2 });
    paramContextMenu = paramContextMenu.add(paramString2);
    paramContextMenu.setIntent(ActivityUserProfile.a(paramContext, paramString1));
    paramContextMenu.setTitleCondensed(paramString2.toString());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4)
  {
    if (paramBoolean) {}
    for (int i = 2131165729;; i = 2131165728)
    {
      paramString2 = StringUtils.a(paramContext, i, new Object[] { paramString2 });
      paramContextMenu = paramContextMenu.add(paramString2);
      paramContextMenu.setIntent(ActivityReviewPager.a(paramContext, paramString1, paramString3, paramString4));
      paramContextMenu.setTitleCondensed(paramString2.toString());
      return;
    }
  }
  
  public static void b(Context paramContext, ContextMenu paramContextMenu, YelpBusiness paramYelpBusiness)
  {
    if (TextUtils.isEmpty(paramYelpBusiness.z())) {}
    for (int i = 2131165725;; i = 2131165726)
    {
      Spanned localSpanned = StringUtils.a(paramContext, i, new Object[] { paramYelpBusiness.z() });
      paramContextMenu = paramContextMenu.add(localSpanned);
      paramContextMenu.setIntent(ActivityBusinessPage.b(paramContext, paramYelpBusiness));
      paramContextMenu.setTitleCondensed(localSpanned.toString());
      return;
    }
  }
  
  public static void b(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {}
    for (int i = 2131165725;; i = 2131165726)
    {
      paramString2 = StringUtils.a(paramContext, i, new Object[] { paramString2 });
      paramContextMenu = paramContextMenu.add(paramString2);
      paramContextMenu.setIntent(ActivityBusinessPage.b(paramContext, paramString1));
      paramContextMenu.setTitleCondensed(paramString2.toString());
      return;
    }
  }
  
  private static void c(Context paramContext, ContextMenu paramContextMenu, YelpBusiness paramYelpBusiness)
  {
    boolean bool2 = true;
    paramContextMenu.add(2131165423).setIntent(ActivityCheckIn.a(paramContext, paramYelpBusiness));
    paramContextMenu.add(2131165467).setIntent(WriteTip.a(paramContext, paramYelpBusiness));
    paramContextMenu.add(2131166820).setIntent(ActivityReviewWrite.a(paramContext, paramYelpBusiness, ReviewSource.BizListLongPress));
    MenuItem localMenuItem = paramContextMenu.add(2131165959);
    localMenuItem.setOnMenuItemClickListener(new ab.a(paramContext, paramYelpBusiness));
    if (!TextUtils.isEmpty(paramYelpBusiness.j()))
    {
      bool1 = true;
      localMenuItem.setEnabled(bool1);
      paramContext = paramContextMenu.add(2131165581);
      paramContext.setIntent(k.a(paramYelpBusiness.ao()));
      if (TextUtils.isEmpty(paramYelpBusiness.ao())) {
        break label161;
      }
    }
    label161:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramContext.setEnabled(bool1);
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */