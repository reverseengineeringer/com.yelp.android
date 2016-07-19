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
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.bx;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ff;
import com.yelp.android.appdata.webrequests.fn;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.b.a;
import com.yelp.android.serializable.FeatureSet.Feature;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.services.UserProfileShareFormatter;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.activities.feed.FeedRequestResult;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.friends.SendFriendRequestForm;
import com.yelp.android.ui.activities.messaging.ActivityComposeMessage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.w;
import com.yelp.android.util.YelpLog;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public class UserProfileFragment
  extends CurrentUserFeedFragment
  implements PanelError.a
{
  private String j;
  private String k;
  private boolean l;
  private User m;
  private fn n;
  private bx o;
  private aj p;
  private UserProfileView q;
  private Queue<Runnable> r;
  private b s;
  private final View.OnClickListener t = new UserProfileFragment.1(this);
  private final c.a u = new UserProfileFragment.2(this);
  private final c.a v = new UserProfileFragment.3(this);
  private final ApiRequest.b<User> w = new UserProfileFragment.4(this);
  private final k.b<FeedRequestResult> x = new UserProfileFragment.5(this);
  
  public static UserProfileFragment a(User paramUser)
  {
    if (paramUser.n())
    {
      UserProfileFragment localUserProfileFragment = new UserProfileFragment();
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("user", paramUser);
      localBundle.putBoolean("about_me", AppData.b().q().a(paramUser));
      localUserProfileFragment.setArguments(localBundle);
      return localUserProfileFragment;
    }
    return a(paramUser.ae(), null);
  }
  
  public static UserProfileFragment a(String paramString1, String paramString2)
  {
    UserProfileFragment localUserProfileFragment = new UserProfileFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("user_id", paramString1);
    localBundle.putBoolean("about_me", AppData.b().q().a(paramString1));
    localBundle.putString("check_in_id", paramString2);
    localUserProfileFragment.setArguments(localBundle);
    return localUserProfileFragment;
  }
  
  private void t()
  {
    u();
    if ((q == null) && (getActivity() != null))
    {
      q = new UserProfileView(getActivity(), null, w());
      q.a(m, l);
    }
    for (;;)
    {
      if (q.getFollowButton() != null) {
        q.getFollowButton().setOnClickListener(t);
      }
      if (getView() != null) {
        h();
      }
      v();
      return;
      q.b(m, l);
      q.a(m);
      q.setUpHeaderButtons(m);
    }
  }
  
  private void u()
  {
    ViewIri localViewIri;
    if (l)
    {
      localViewIri = ViewIri.Profile;
      if (!l) {
        break label35;
      }
    }
    label35:
    for (Map localMap = Collections.emptyMap();; localMap = Collections.singletonMap("user_id", j))
    {
      AppData.a(localViewIri, localMap);
      return;
      localViewIri = ViewIri.UserProfile;
      break;
    }
  }
  
  @TargetApi(21)
  private void v()
  {
    int i = w();
    TypedArray localTypedArray = getActivity().obtainStyledAttributes(null, b.a.UserProfileView, i, i);
    Drawable localDrawable = localTypedArray.getDrawable(8);
    if (localDrawable != null) {
      ((YelpActivity)getActivity()).getSupportActionBar().a(localDrawable);
    }
    if (f.a(21))
    {
      i = localTypedArray.getColor(9, 0);
      getActivity().getWindow().setStatusBarColor(i);
    }
    localTypedArray.recycle();
  }
  
  private int w()
  {
    if (m.h()) {
      return m.v().b.getUserProfileStyle();
    }
    return 2131296750;
  }
  
  private void x()
  {
    if (m.T())
    {
      new fq(m, v).f(new Void[0]);
      return;
    }
    new ff(m, u).f(new Void[0]);
  }
  
  public void a(int paramInt)
  {
    m.g(paramInt);
    p.notifyDataSetChanged();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof ContributionAwardType))
    {
      paramListView = (ContributionAwardType)paramListView;
      AppData.a(iri);
      startActivity(paramListView.getViewIntent(getActivity(), m));
    }
    while (!(paramListView instanceof ActionToTry)) {
      return;
    }
    paramListView = (ActionToTry)paramListView;
    paramView = paramListView.intentToStartAction(getActivity(), m);
    AppData.a(iri);
    e locale = (e)p.a(2131166674).a;
    r.add(new UserProfileFragment.a(locale.a(), paramListView));
    startActivity(paramView);
  }
  
  public void a(ActivityUserProfile.a parama)
  {
    m.f(b);
  }
  
  public void b()
  {
    if ((m != null) && ((o == null) || (!o.u()))) {
      if (!l) {
        break label75;
      }
    }
    label75:
    for (FeedType localFeedType = FeedType.ME;; localFeedType = FeedType.USER)
    {
      o = new bx(m.ae(), localFeedType, x, e);
      o.f(new Void[0]);
      return;
    }
  }
  
  public void b(User paramUser)
  {
    m = paramUser;
    if (AppData.b().q().a(paramUser)) {
      l = true;
    }
    t();
  }
  
  public void h()
  {
    if (m().getHeaderViewsCount() == 0)
    {
      m().setHeaderDividersEnabled(false);
      m().addHeaderView(q, null, false);
    }
    com.yelp.android.ui.activities.feed.a locala = c();
    p = new aj();
    Object localObject2 = ContributionAwardType.CONTRIBUTIONS_AND_AWARDS;
    Object localObject1 = localObject2;
    if (!l)
    {
      localObject1 = new LinkedHashSet((Collection)localObject2);
      ((Collection)localObject1).retainAll(ContributionAwardType.AWARDS);
      localObject2 = ((Collection)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (nextprivateStat) {
          ((Iterator)localObject2).remove();
        }
      }
    }
    localObject1 = new b((Collection)localObject1, m, q.getBoldTitleColor());
    if ((l) && (!Features.messaging.isEnabled())) {
      ((w)localObject1).c(ContributionAwardType.MESSAGES);
    }
    p.a(2131165518, aj.c.a((BaseAdapter)localObject1).b(2131689503).b());
    if (l)
    {
      localObject1 = new a(EnumSet.allOf(ActionToTry.class), m, q.getBoldTitleColor());
      p.a(2131166674, aj.c.a(getText(2131166674), (BaseAdapter)localObject1).a(2130772428).b(2131689503).b());
    }
    if (l) {}
    for (localObject1 = getText(2131166196);; localObject1 = getString(2131166773, new Object[] { m.ac() }))
    {
      p.a(2131166773, aj.c.a((CharSequence)localObject1, locala).a(2130772428).b());
      if (a.getCount() == 0) {
        p_();
      }
      a(p);
      y();
      return;
    }
  }
  
  public void i()
  {
    if (n != null)
    {
      n.a(true);
      n.a(null);
    }
    if (l) {
      if (!AppData.b().q().b()) {}
    }
    for (n = new fn(w, null, null);; n = new fn(w, j, k))
    {
      n.f(new Void[0]);
      a(n);
      return;
      YelpLog.remoteError("UserProfileFragment", "User not logged in");
      return;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    r = new LinkedList();
    if (l) {}
    for (paramBundle = FeedType.ME;; paramBundle = FeedType.USER)
    {
      a(paramBundle);
      if ((m == null) || (!m.n())) {
        break;
      }
      t();
      s.a(m);
      return;
    }
    if ((j != null) || (k != null))
    {
      i();
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
      s = ((b)paramActivity);
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
    m = ((User)getArguments().getParcelable("user"));
    j = getArguments().getString("user_id");
    k = getArguments().getString("check_in_id");
    l = getArguments().getBoolean("about_me", false);
    if (paramBundle != null)
    {
      m = ((User)paramBundle.getParcelable("saved_user"));
      l = paramBundle.getBoolean("about_me");
    }
    if ((m != null) && (j == null)) {
      j = m.ae();
    }
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    if (l) {}
    for (int i = 2131755008;; i = 2131755048)
    {
      paramMenuInflater.inflate(i, paramMenu);
      if (i == 2131755048)
      {
        paramMenu = paramMenu.findItem(2131691044);
        if (m != null) {
          break;
        }
        paramMenu.setVisible(false);
      }
      return;
    }
    if (m.T()) {}
    for (i = 2131166750;; i = 2131165925)
    {
      paramMenu.setTitle(i);
      return;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    s = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131689722: 
      startActivity(ActivityLogin.a(getActivity(), 2131165700, 2131166099, ActivityFindFriends.a(getActivity(), false)));
      return true;
    case 2131690965: 
      startActivityForResult(ActivityComposeMessage.a(getActivity(), m), 1033);
      return true;
    case 2131691042: 
      startActivityForResult(ActivityLogin.a(getActivity(), 2131166099, SendFriendRequestForm.a(getActivity(), m)), 1003);
    case 2131691043: 
      startActivity(ActivityLogin.a(getActivity(), 2131166098, SendCompliment.a(getActivity(), m)));
      return true;
    case 2131691044: 
      x();
      return true;
    }
    a(new UserProfileShareFormatter(m));
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a("feed", o);
    a("user_profile", n);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = true;
    super.onPrepareOptionsMenu(paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131691043);
    if ((localMenuItem != null) && (m != null) && (m.a(FeatureSet.Feature.SEND_COMPLIMENT))) {
      localMenuItem.setVisible(false);
    }
    localMenuItem = paramMenu.findItem(2131690965);
    if ((localMenuItem != null) && (m != null) && (m.a(FeatureSet.Feature.SEND_MESSAGE))) {
      localMenuItem.setVisible(false);
    }
    localMenuItem = paramMenu.findItem(2131691042);
    int i;
    if (localMenuItem != null)
    {
      if ((m == null) || (m.V())) {
        break label234;
      }
      bool1 = true;
      localMenuItem.setVisible(bool1);
      if ((m == null) || (!m.w())) {
        break label239;
      }
      i = 2131165445;
      label163:
      localMenuItem.setTitle(i);
      if ((m != null) && (m.a(FeatureSet.Feature.ADD_FRIEND))) {
        localMenuItem.setVisible(false);
      }
    }
    paramMenu = paramMenu.findItem(2131691045);
    if (paramMenu != null) {
      if (m == null) {
        break label246;
      }
    }
    label234:
    label239:
    label246:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramMenu.setVisible(bool1);
      return;
      bool1 = false;
      break;
      i = 2131165444;
      break label163;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    o = ((bx)a("feed", o, x));
    n = ((fn)a("user_profile", n, w));
    while (!r.isEmpty()) {
      ((Runnable)r.poll()).run();
    }
    if ((n != null) && (n.u())) {
      a(n);
    }
    while ((m().getCount() != 0) || (m == null) || (o != null)) {
      return;
    }
    p_();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved_user", m);
    paramBundle.putBoolean("about_me", l);
  }
  
  public void q_()
  {
    i();
  }
  
  public static abstract interface b
  {
    public abstract void a(User paramUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserProfileFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */