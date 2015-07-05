package com.yelp.android.ui.activities.drawer;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.UserLocalMediaRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.ActivityMonocle;
import com.yelp.android.ui.activities.ActivityBookmarks;
import com.yelp.android.ui.activities.ActivityContributionSearch;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityRecents;
import com.yelp.android.ui.activities.bugreport.ActivityReportABug;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.feed.ActivityFeed;
import com.yelp.android.ui.activities.feed.SingleFeedFragmentActivity;
import com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.friends.ActivityFriendList;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;
import com.yelp.android.ui.activities.mutatebiz.AddBusiness;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.notifications.ActivityNotifications;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.profile.SingleCurrentUserFeedEntryFragment.FeedFragmentType;
import com.yelp.android.ui.activities.profile.UserBizMediaGrid;
import com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import com.yelp.android.ui.activities.weekly.ActivityWeeklyIssue;
import com.yelp.android.util.r;
import java.util.Collections;

class l
  implements View.OnClickListener
{
  l(DrawerFragment paramDrawerFragment) {}
  
  public void onClick(View paramView)
  {
    int i = 2131166030;
    Object localObject = AppData.b().m();
    boolean bool1 = ((dc)localObject).c();
    boolean bool2 = ((dc)localObject).e();
    boolean bool3 = Features.video_capture.isEnabled();
    localObject = ((dc)localObject).s();
    Intent localIntent;
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131493644: 
      i = 2131165871;
      localIntent = ActivityFriendList.a(a.getActivity(), (User)localObject);
      localObject = EventIri.DrawerFriends;
    }
    for (;;)
    {
      AppData.a((b)localObject);
      int j = DrawerFragment.j(a);
      if ((paramView.getId() != j) && ((paramView.getId() != 2131493639) || (j != 2131493497))) {
        break;
      }
      DrawerFragment.k(a).closeNavDrawer();
      return;
      if ((((User)localObject).getVideoCount() == 0) || (!bool3)) {
        i = 2131166330;
      }
      for (;;)
      {
        localIntent = UserBizMediaGrid.a(a.getActivity(), new UserLocalMediaRequest((User)localObject), a.getString(i), (User)localObject);
        localObject = EventIri.DrawerMedia;
        break;
        if (((User)localObject).getPhotoCount() == 0) {
          i = 2131166828;
        } else {
          i = 2131166331;
        }
      }
      i = 2131166147;
      localIntent = SingleFeedFragmentActivity.a(a.getActivity(), (User)localObject, ((User)localObject).getReviewCount(), SingleCurrentUserFeedEntryFragment.FeedFragmentType.Review);
      localObject = EventIri.DrawerReviews;
      continue;
      i = 2131165340;
      localIntent = ActivityReviewSuggestions.a(a.getActivity());
      localObject = EventIri.DrawerAddReview;
      continue;
      if (bool2) {
        if (bool3)
        {
          i = 2131165334;
          label472:
          if (!bool3) {
            break label537;
          }
          j = 2131166770;
          label480:
          if (!bool3) {
            break label543;
          }
        }
      }
      label537:
      label543:
      for (int k = 2131166034;; k = 2131166035)
      {
        localIntent = ActivityLogin.a(a.getActivity(), j, k, ActivityContributionSearch.a(a.getActivity(), BusinessContributionType.BUSINESS_PHOTO));
        localObject = EventIri.DrawerAddMedia;
        break;
        i = 2131165338;
        break label472;
        i = 2131166030;
        break label472;
        j = 2131166771;
        break label480;
      }
      if (bool2) {
        i = 2131165484;
      }
      localIntent = ActivityLogin.a(a.getActivity(), 2131166774, 2131166037, ActivityContributionSearch.a(a.getActivity(), BusinessContributionType.CHECK_IN));
      localObject = EventIri.DrawerCheckIn;
      continue;
      localIntent = r.a(a.getActivity(), ActivityNearby.class);
      localObject = EventIri.DrawerNearby;
      i = 0;
      continue;
      localIntent = r.a(a.getActivity(), SearchBusinessesByList.class);
      localIntent.setAction("android.intent.action.SEARCH");
      localObject = EventIri.DrawerSearch;
      i = 0;
      continue;
      if (bool1) {
        i = 2131165302;
      }
      localIntent = ActivityLogin.a(a.getActivity(), 2131166039, r.a(a.getActivity(), ActivityFeed.class));
      localObject = EventIri.DrawerFeed;
      continue;
      if (bool1) {
        i = 2131166221;
      }
      localIntent = ActivityLogin.a(a.getActivity(), 2131166028, ActivityNotifications.a(a.getActivity()));
      localObject = EventIri.DrawerNotifications;
      continue;
      i = 2131166160;
      localIntent = ActivityLogin.a(a.getActivity(), 2131166773, 2131166036, ActivityBookmarks.a(a.getActivity()));
      localObject = EventIri.DrawerBookmarks;
      continue;
      i = 2131166396;
      localIntent = r.a(a.getActivity(), ActivityRecents.class);
      localObject = EventIri.DrawerRecents;
      continue;
      i = 2131165793;
      localIntent = ActivityEvents.a(a.getActivity());
      localObject = EventIri.DrawerEvents;
      continue;
      i = 2131166088;
      localIntent = ActivityMessaging.a(a.getActivity());
      localObject = EventIri.DrawerMessages;
      continue;
      i = 2131165504;
      localIntent = r.a(a.getActivity(), NearbyCheckIns.class);
      localObject = EventIri.DrawerFriendCheckIns;
      continue;
      i = 2131166634;
      localIntent = r.a(a.getActivity(), ActivityTalk.class);
      localObject = EventIri.DrawerTalk;
      continue;
      if (paramView.getId() == 2131493497) {}
      for (localObject = EventIri.DrawerAboutMe;; localObject = EventIri.DrawerUserInfo)
      {
        if (bool1) {
          i = 0;
        }
        localIntent = ActivityLogin.a(a.getActivity(), 2131166032, ActivityUserProfile.a(a.getActivity()));
        break;
      }
      i = 2131166694;
      localIntent = ActivityWeeklyIssue.a(a.getActivity());
      localObject = EventIri.DrawerWeekly;
      continue;
      localIntent = r.a(a.getActivity(), ActivityMonocle.class);
      localObject = EventIri.DrawerMonocle;
      i = 0;
      continue;
      i = 2131165819;
      localIntent = ActivityFindFriends.a(a.getActivity(), false, false);
      localObject = EventIri.DrawerFindFriends;
      continue;
      i = 2131165323;
      localIntent = AddBusiness.a(a.getActivity(), Collections.emptyList());
      localObject = EventIri.DrawerAddBusiness;
      continue;
      i = 2131166167;
      localIntent = r.a(a.getActivity(), ChangeSettings.class);
      localObject = EventIri.DrawerSettings;
      continue;
      i = 2131166446;
      localIntent = ActivityReportABug.a(a.getActivity());
      localObject = EventIri.DrawerBug;
      continue;
      localIntent = ActivityLogin.a(a.getActivity());
      localObject = EventIri.DrawerLogin;
    }
    if (i == 0) {}
    for (paramView = null;; paramView = a.getString(i))
    {
      DrawerFragment.k(a).onDrawerItemSelected(localIntent, paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */