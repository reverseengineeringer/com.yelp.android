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
import com.yelp.android.util.r;

public class bf
{
  public static MenuItem a(Context paramContext, ContextMenu paramContextMenu, YelpBusinessReview paramYelpBusinessReview)
  {
    paramYelpBusinessReview = paramYelpBusinessReview.getUserName();
    paramContextMenu = paramContextMenu.setHeaderIcon(2130837624);
    paramContext = StringUtils.a(paramContext, 2131165651, new Object[] { paramYelpBusinessReview });
    paramContextMenu = paramContextMenu.add(paramContext);
    paramContextMenu.setTitleCondensed(paramContext.toString());
    return paramContextMenu;
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, BusinessSearchResult paramBusinessSearchResult)
  {
    YelpBusiness localYelpBusiness = paramBusinessSearchResult.getBusiness();
    paramContextMenu.add(2131165648).setIntent(ActivityBusinessPage.a(paramContext, paramBusinessSearchResult, null));
    c(paramContext, paramContextMenu, localYelpBusiness);
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, CheckIn paramCheckIn)
  {
    if ((paramCheckIn instanceof YelpCheckIn)) {
      a(paramContext, paramContextMenu, ((YelpCheckIn)paramCheckIn).getUserId(), paramCheckIn.getUserName());
    }
    b(paramContext, paramContextMenu, paramCheckIn.getBusiness());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, Compliment paramCompliment, String paramString, boolean paramBoolean)
  {
    if (paramCompliment.getItem() == Compliment.ComplimentableItemType.REVIEW)
    {
      a(paramContext, paramContextMenu, paramCompliment.getComplimentableId(), paramString, paramBoolean, paramCompliment.getBusinessId(), paramCompliment.getBusinessName());
      b(paramContext, paramContextMenu, paramCompliment.getBusinessId(), paramCompliment.getBusinessName());
    }
    if (paramCompliment.getItem() == Compliment.ComplimentableItemType.BIZ_PHOTO) {
      b(paramContext, paramContextMenu, paramCompliment.getBusinessId(), paramCompliment.getBusinessName());
    }
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, User paramUser)
  {
    a(paramContext, paramContextMenu, paramUser.getId(), paramUser.getName());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, YelpBusiness paramYelpBusiness)
  {
    paramContextMenu.add(2131165648).setIntent(ActivityBusinessPage.b(paramContext, paramYelpBusiness));
    c(paramContext, paramContextMenu, paramYelpBusiness);
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2)
  {
    paramString2 = StringUtils.a(paramContext, 2131165650, new Object[] { paramString2 });
    paramContextMenu = paramContextMenu.add(paramString2);
    paramContextMenu.setIntent(ActivityUserProfile.a(paramContext, paramString1));
    paramContextMenu.setTitleCondensed(paramString2.toString());
  }
  
  public static void a(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4)
  {
    if (paramBoolean) {}
    for (int i = 2131165652;; i = 2131165651)
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
    if (TextUtils.isEmpty(paramYelpBusiness.getDisplayName())) {}
    for (int i = 2131165648;; i = 2131165649)
    {
      Spanned localSpanned = StringUtils.a(paramContext, i, new Object[] { paramYelpBusiness.getDisplayName() });
      paramContextMenu = paramContextMenu.add(localSpanned);
      paramContextMenu.setIntent(ActivityBusinessPage.b(paramContext, paramYelpBusiness));
      paramContextMenu.setTitleCondensed(localSpanned.toString());
      return;
    }
  }
  
  public static void b(Context paramContext, ContextMenu paramContextMenu, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {}
    for (int i = 2131165648;; i = 2131165649)
    {
      paramString2 = StringUtils.a(paramContext, i, new Object[] { paramString2 });
      paramContextMenu = paramContextMenu.add(paramString2);
      paramContextMenu.setIntent(ActivityBusinessPage.a(paramContext, paramString1));
      paramContextMenu.setTitleCondensed(paramString2.toString());
      return;
    }
  }
  
  private static void c(Context paramContext, ContextMenu paramContextMenu, YelpBusiness paramYelpBusiness)
  {
    boolean bool2 = true;
    paramContextMenu.add(2131165301).setIntent(ActivityCheckIn.a(paramContext, paramYelpBusiness));
    paramContextMenu.add(2131165341).setIntent(WriteTip.a(paramContext, paramYelpBusiness));
    paramContextMenu.add(2131166851).setIntent(ActivityReviewWrite.a(paramContext, paramYelpBusiness, ReviewSource.BizListLongPress));
    MenuItem localMenuItem = paramContextMenu.add(2131165883);
    localMenuItem.setOnMenuItemClickListener(new bg(paramContext, paramYelpBusiness));
    if (!TextUtils.isEmpty(paramYelpBusiness.getAddressForDrivingDirections()))
    {
      bool1 = true;
      localMenuItem.setEnabled(bool1);
      paramContext = paramContextMenu.add(2131165455);
      paramContext.setIntent(r.a(paramYelpBusiness.getDialablePhone()));
      if (TextUtils.isEmpty(paramYelpBusiness.getDialablePhone())) {
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
 * Qualified Name:     com.yelp.android.ui.util.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */