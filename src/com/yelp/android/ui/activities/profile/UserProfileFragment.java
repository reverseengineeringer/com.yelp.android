package com.yelp.android.ui.activities.profile;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ce;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gx;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.FeatureSet.Feature;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.feed.FeedRequestResult;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.feed.aq;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.friends.SendFriendRequestForm;
import com.yelp.android.ui.activities.messaging.ActivityComposeMessage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.YelpLog;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

public class UserProfileFragment
  extends CurrentUserFeedFragment
  implements aa
{
  private String c;
  private String d;
  private boolean e;
  private User g;
  private gx h;
  private ce i;
  private bs j;
  private UserProfileView k;
  private Queue<Runnable> l;
  private z m;
  private final m<User> n = new w(this);
  private final com.yelp.android.appdata.webrequests.j<FeedRequestResult> o = new x(this);
  
  public static UserProfileFragment a(User paramUser)
  {
    if (paramUser.isFullUser())
    {
      UserProfileFragment localUserProfileFragment = new UserProfileFragment();
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("user", paramUser);
      localBundle.putBoolean("about_me", AppData.b().m().a(paramUser));
      localUserProfileFragment.setArguments(localBundle);
      return localUserProfileFragment;
    }
    return a(paramUser.getId(), null);
  }
  
  public static UserProfileFragment a(String paramString1, String paramString2)
  {
    UserProfileFragment localUserProfileFragment = new UserProfileFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("user_id", paramString1);
    localBundle.putBoolean("about_me", AppData.b().m().a(paramString1));
    localBundle.putString("check_in_id", paramString2);
    localUserProfileFragment.setArguments(localBundle);
    return localUserProfileFragment;
  }
  
  @TargetApi(21)
  private void l()
  {
    int i1 = u();
    TypedArray localTypedArray = getActivity().obtainStyledAttributes(null, com.yelp.android.b.UserProfileView, i1, i1);
    Drawable localDrawable = localTypedArray.getDrawable(8);
    if (localDrawable != null) {
      ((YelpActivity)getActivity()).getSupportActionBar().a(localDrawable);
    }
    if (n.a(21))
    {
      i1 = localTypedArray.getColor(9, 0);
      getActivity().getWindow().setStatusBarColor(i1);
    }
    localTypedArray.recycle();
  }
  
  private int u()
  {
    if (g.isEliteUser()) {
      return g.getMostRecentEliteYear().type.getUserProfileStyle();
    }
    return 2131689854;
  }
  
  public void a(int paramInt)
  {
    g.setUnreadMessageCount(paramInt);
    j.notifyDataSetChanged();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof ContributionAwardType))
    {
      paramListView = (ContributionAwardType)paramListView;
      AppData.a(iri);
      startActivity(paramListView.getViewIntent(getActivity(), g));
    }
    while (!(paramListView instanceof ActionToTry)) {
      return;
    }
    paramListView = (ActionToTry)paramListView;
    paramView = paramListView.intentToStartAction(getActivity(), g);
    AppData.a(iri);
    s locals = (s)j.a(2131166698).a;
    l.add(new y(locals.a(), paramListView));
    startActivity(paramView);
  }
  
  public void a(j paramj)
  {
    g.addComplimentCount(b);
    g.addFriendCount(d);
  }
  
  public void b()
  {
    if (g != null) {
      if (!e) {
        break label54;
      }
    }
    label54:
    for (FeedType localFeedType = FeedType.ME;; localFeedType = FeedType.USER)
    {
      i = new ce(g.getId(), localFeedType, o);
      i.execute(new Void[0]);
      return;
    }
  }
  
  public void b(User paramUser)
  {
    g = paramUser;
    if (AppData.b().m().a(paramUser)) {
      e = true;
    }
    if ((k == null) && (getActivity() != null))
    {
      k = new UserProfileView(getActivity(), null, u());
      k.a(paramUser, e);
      l();
      if ((getView() == null) || (m().getHeaderViewsCount() != 0)) {
        break label439;
      }
      m().setHeaderDividersEnabled(false);
      m().addHeaderView(k, null, false);
      if (!e) {
        break label239;
      }
    }
    aq localaq;
    label239:
    for (Object localObject1 = FeedType.ME;; localObject1 = FeedType.USER)
    {
      a((FeedType)localObject1);
      localaq = f();
      j = new bs();
      Object localObject2 = ContributionAwardType.CONTRIBUTIONS_AND_AWARDS;
      localObject1 = localObject2;
      if (e) {
        break label246;
      }
      localObject1 = new LinkedHashSet((Collection)localObject2);
      ((Collection)localObject1).retainAll(ContributionAwardType.AWARDS);
      localObject2 = ((Collection)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (nextprivateStat) {
          ((Iterator)localObject2).remove();
        }
      }
      k.b(paramUser, e);
      k.a(paramUser);
      break;
    }
    label246:
    localObject1 = new k((Collection)localObject1, paramUser, k.getBoldTitleColor());
    if ((e) && (!Features.messaging.isEnabled())) {
      ((au)localObject1).b(ContributionAwardType.MESSAGES);
    }
    j.a(2131165387, bw.a((BaseAdapter)localObject1).a(2131492893, ao.f, ao.f).a());
    if (e)
    {
      localObject1 = new a(EnumSet.allOf(ActionToTry.class), paramUser, k.getBoldTitleColor());
      j.a(2131166698, bw.a(getText(2131166698), (BaseAdapter)localObject1).a(2130772318).a(2131492893, ao.f, ao.f).a());
    }
    if (e)
    {
      paramUser = getText(2131166142);
      j.a(2131166807, paramUser, localaq);
      if (!d().isEmpty()) {
        break label462;
      }
      a_();
    }
    for (;;)
    {
      a(j);
      w();
      label439:
      return;
      paramUser = getString(2131166807, new Object[] { paramUser.getNameWithoutPeriod() });
      break;
      label462:
      b(d());
    }
  }
  
  public ViewIri g()
  {
    if (e) {
      return ViewIri.Profile;
    }
    return ViewIri.UserProfile;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    if (e) {
      return Collections.emptyMap();
    }
    return Collections.singletonMap("user_id", c);
  }
  
  public void h()
  {
    if (h != null)
    {
      h.cancel(true);
      h.setCallback(null);
    }
    if (e) {}
    for (h = new gx(n, null, null);; h = new gx(n, c, d))
    {
      h.execute(new Void[0]);
      a(h);
      return;
    }
  }
  
  public void m_()
  {
    h();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    l = new LinkedList();
    if ((g != null) && (g.isFullUser()))
    {
      j();
      C();
      b(g);
      m.a(g);
      return;
    }
    if ((c != null) || (d != null))
    {
      h();
      return;
    }
    YelpLog.e("UserProfileFragment", "Tried to start UserProfileFragment without a check-in, user, or user id");
    getActivity().finish();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      m = ((z)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new IllegalStateException("Must attach your UserProfileFragment to an UserProfileListener");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = ((User)getArguments().getParcelable("user"));
    c = getArguments().getString("user_id");
    d = getArguments().getString("check_in_id");
    e = getArguments().getBoolean("about_me", false);
    if (paramBundle != null) {
      g = ((User)paramBundle.getParcelable("saved_user"));
    }
    if ((g != null) && (c == null)) {
      c = g.getId();
    }
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    if (e) {}
    for (int i1 = 2131755008;; i1 = 2131755044)
    {
      paramMenuInflater.inflate(i1, paramMenu);
      return;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    m = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131493194: 
      startActivity(ActivityLogin.a(getActivity(), 2131166769, 2131166769, ActivityFindFriends.a(getActivity(), false, false)));
      return true;
    case 2131494095: 
      startActivityForResult(ActivityComposeMessage.a(getActivity(), g), 1030);
      return true;
    case 2131494168: 
      startActivityForResult(ActivityLogin.a(getActivity(), 2131166040, SendFriendRequestForm.a(getActivity(), g)), 1001);
    }
    startActivity(ActivityLogin.a(getActivity(), 2131166038, SendCompliment.a(getActivity(), g)));
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a("feed", i);
    a("user_profile", h);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131494169);
    if ((localMenuItem != null) && (g != null) && (g.isFeatureDisabled(FeatureSet.Feature.SEND_COMPLIMENT))) {
      localMenuItem.setVisible(false);
    }
    localMenuItem = paramMenu.findItem(2131494095);
    if ((localMenuItem != null) && (g != null) && (g.isFeatureDisabled(FeatureSet.Feature.SEND_MESSAGE))) {
      localMenuItem.setVisible(false);
    }
    paramMenu = paramMenu.findItem(2131494168);
    boolean bool;
    if (paramMenu != null)
    {
      if ((g == null) || (g.isFriend())) {
        break label194;
      }
      bool = true;
      paramMenu.setVisible(bool);
      if ((g == null) || (!g.isMale())) {
        break label199;
      }
    }
    label194:
    label199:
    for (int i1 = 2131165322;; i1 = 2131165321)
    {
      paramMenu.setTitle(i1);
      if ((g != null) && (g.isFeatureDisabled(FeatureSet.Feature.ADD_FRIEND))) {
        paramMenu.setVisible(false);
      }
      return;
      bool = false;
      break;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    a("feed", i, o);
    a("user_profile", h, n);
    while (!l.isEmpty()) {
      ((Runnable)l.poll()).run();
    }
    if ((h != null) && (h.isFetching())) {
      a(h);
    }
    while ((m().getCount() != 0) || (g == null) || (i != null)) {
      return;
    }
    a_();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved_user", g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserProfileFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */