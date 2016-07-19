package com.yelp.android.ui.activities.reviews;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.dz;
import com.yelp.android.appdata.webrequests.dz.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityRetryReviewShare;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.d;
import com.yelp.android.util.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ReviewOverviewFragment
  extends ReviewBaseFragment
{
  private View e;
  private TextView f;
  private SpannableFrameLayout g;
  private View h;
  private String i;
  private ReviewState j;
  private String k;
  private String l;
  private boolean m;
  private ArrayList<SurveyQuestion> n;
  private ArrayList<ReviewSuggestion> o;
  private List<ShareRequest.ShareType> p;
  private ToggleButton q;
  private ToggleButton r;
  private dz s;
  private final k.b<dz.a> t = new ReviewOverviewFragment.10(this);
  
  public static ReviewOverviewFragment a(ReviewSource paramReviewSource)
  {
    ReviewOverviewFragment localReviewOverviewFragment = new ReviewOverviewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("review_source", paramReviewSource);
    localReviewOverviewFragment.setArguments(localBundle);
    return localReviewOverviewFragment;
  }
  
  private void d()
  {
    if ((s == null) || (s.u())) {
      return;
    }
    YelpActivity localYelpActivity = (YelpActivity)getActivity();
    s.a(new Void[0]);
    localYelpActivity.showLoadingDialog(s);
  }
  
  private void e()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(av.e);
    localAlphaAnimation.setAnimationListener(new ReviewOverviewFragment.8(this));
    if (((j != ReviewState.FINISHED_NOT_RECENTLY) || (d.o())) && (!d.p()) && (d.g() == 0))
    {
      g.startAnimation(localAlphaAnimation);
      h.startAnimation(localAlphaAnimation);
      ((TransitionDrawable)c.getBackground()).startTransition(av.e);
      return;
    }
    e.startAnimation(localAlphaAnimation);
  }
  
  private void f()
  {
    Object localObject2 = new ReviewBroadcast();
    ((ReviewBroadcast)localObject2).a(d.f().aD());
    ((ReviewBroadcast)localObject2).a(d.g());
    Object localObject1;
    User localUser;
    if (m)
    {
      localObject1 = ReviewState.DRAFTED;
      ((ReviewBroadcast)localObject2).a((ReviewState)localObject1);
      ((ReviewBroadcast)localObject2).a(m);
      ((ReviewBroadcast)localObject2).b(d.k());
      ((ReviewBroadcast)localObject2).c(i);
      new ObjectDirtyEvent((Parcelable)localObject2, "com.yelp.android.review.state.update").a(getActivity());
      localObject1 = ActivityReviewComplete.a(d.f(), i, k, l, m, d.k(), d.g(), getActivity(), n, o, p);
      if (getActivity().getIntent().getBooleanExtra("yelp:external_request", false)) {
        ((Intent)localObject1).putExtra("yelp:external_request", true);
      }
      localUser = AppData.b().q().p();
      localObject2 = AppData.b().f();
      if ((m) || (localUser.j_() != 0) || (!((com.yelp.android.appdata.c)localObject2).A())) {
        break label295;
      }
      ActivityElitePrompt.a((Intent)localObject1, getActivity(), localUser.ac());
    }
    for (;;)
    {
      if ((!m) && (j != ReviewState.FINISHED_RECENTLY) && (j != ReviewState.FINISHED_NOT_RECENTLY)) {
        localUser.d(1);
      }
      startActivity((Intent)localObject1);
      localObject1 = getActivity();
      ((Activity)localObject1).setResult(-1);
      ((Activity)localObject1).finish();
      return;
      localObject1 = ReviewState.FINISHED_RECENTLY;
      break;
      label295:
      if ((localUser.J() == 0) && (((com.yelp.android.appdata.c)localObject2).B()))
      {
        FragmentActivity localFragmentActivity = getActivity();
        String str = localUser.ac();
        if (m) {}
        for (localObject2 = PhotoPromptType.TIP;; localObject2 = PhotoPromptType.REVIEW)
        {
          localObject1 = ActivityPhotoPrompt.a((Intent)localObject1, localFragmentActivity, str, (PhotoPromptType)localObject2);
          break;
        }
      }
    }
  }
  
  private void g()
  {
    View localView = ((YelpActivity)getActivity()).getSupportActionBar().a();
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(av.c);
    localAlphaAnimation.setAnimationListener(new ReviewOverviewFragment.9(this));
    localView.startAnimation(localAlphaAnimation);
  }
  
  private boolean h()
  {
    View localView = ((YelpActivity)getActivity()).getSupportActionBar().a();
    return (localView != null) && (localView.getTag().equals("stars"));
  }
  
  public boolean b()
  {
    Intent localIntent = p.a(getActivity(), AppData.b().q().p(), p, ActivityRetryReviewShare.class);
    if (localIntent != null)
    {
      startActivityForResult(localIntent, 1005);
      return true;
    }
    return false;
  }
  
  public void c()
  {
    Iterator localIterator = p.iterator();
    while (localIterator.hasNext())
    {
      ShareRequest.ShareType localShareType = (ShareRequest.ShareType)localIterator.next();
      switch (ReviewOverviewFragment.2.a[localShareType.ordinal()])
      {
      default: 
        break;
      case 1: 
      case 2: 
        AppData.a(EventIri.ReviewWriteShare, "social_network", localShareType.getTypeString());
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
    case 1005: 
      do
      {
        return;
      } while (paramInt2 != -1);
      p = new LinkedList(d.a(paramIntent.getIntArrayExtra("retry_shares"), ShareRequest.ShareType.values()));
      c();
      f();
      return;
    }
    d();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = ((c)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    p = new ArrayList(3);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755009, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = paramLayoutInflater.inflate(2130903254, paramViewGroup, false);
    f = ((TextView)e.findViewById(2131690303));
    c = ((ViewGroup)e.findViewById(2131690299));
    paramLayoutInflater = (SpannableFrameLayout)e.findViewById(2131690297);
    a = ((StarsView)e.findViewById(2131690300));
    g = ((SpannableFrameLayout)e.findViewById(2131690301));
    h = e.findViewById(2131690304);
    q = ((ToggleButton)e.findViewById(2131690306));
    r = ((ToggleButton)e.findViewById(2131690305));
    q.setOnCheckedChangeListener(new ReviewOverviewFragment.1(this));
    r.setOnCheckedChangeListener(new ReviewOverviewFragment.3(this));
    p.a(getActivity(), AppData.b().q().p(), false, null, q, r);
    a.setNumStars(d.g());
    a.setOnStarsClicked(new ReviewOverviewFragment.4(this));
    g.setOnTouchListener(new ReviewOverviewFragment.5(this));
    f.setOnClickListener(new ReviewOverviewFragment.6(this));
    j = d.l();
    if ((j == ReviewState.FINISHED_NOT_RECENTLY) && (!d.o()))
    {
      paramLayoutInflater.setVisibility(0);
      paramLayoutInflater.setLeft(true);
      f.setText(d.k());
      if ((!TextUtils.isEmpty(d.k())) && (!d.q())) {
        break label465;
      }
      h.setVisibility(8);
      label357:
      setHasOptionsMenu(true);
      if (getActivity() != null) {
        ((YelpActivity)getActivity()).updateOptionsMenu();
      }
      if (!h()) {
        break label493;
      }
      g();
    }
    for (;;)
    {
      return e;
      if (d.p())
      {
        ((TextView)e.findViewById(2131690298)).setText(2131165588);
        paramLayoutInflater.setVisibility(0);
        paramLayoutInflater.setLeft(true);
        break;
      }
      paramLayoutInflater.setVisibility(8);
      paramLayoutInflater = (SpannableFrameLayout)c;
      paramLayoutInflater.setLeft(true);
      paramLayoutInflater.refreshDrawableState();
      break;
      label465:
      paramLayoutInflater = av.d(getActivity(), null);
      paramLayoutInflater.setStartOffset(av.d);
      h.startAnimation(paramLayoutInflater);
      break label357;
      label493:
      a.setVisibility(0);
    }
  }
  
  public void onDestroy()
  {
    if (s != null)
    {
      s.a(true);
      s.a(null);
    }
    super.onDestroy();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if (!isAdded()) {
      return;
    }
    paramMenu = paramMenu.findItem(2131690992);
    paramMenu.setTitle(getString(2131166375));
    paramMenu.setOnMenuItemClickListener(new ReviewOverviewFragment.7(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewOverviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */