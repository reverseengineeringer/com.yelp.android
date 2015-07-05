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
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fa;
import com.yelp.android.appdata.webrequests.fb;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.ActivityRetryReviewShare;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.f;
import com.yelp.android.util.z;
import java.util.ArrayList;
import java.util.Collections;
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
  private fa s;
  private boolean t;
  private final j<fb> u = new ay(this);
  
  private void d()
  {
    if ((s == null) || (s.isFetching())) {
      return;
    }
    YelpActivity localYelpActivity = (YelpActivity)getActivity();
    String str = localYelpActivity.getHelper().u();
    AppData.a(ReviewEventIri.ReviewWritePost, Collections.singletonMap("sign_up_status", str));
    s.executeWithLocation(new Void[0]);
    localYelpActivity.showLoadingDialog(s);
  }
  
  private void e()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(cw.e);
    localAlphaAnimation.setAnimationListener(new aw(this));
    if (((j != ReviewState.FINISHED_NOT_RECENTLY) || (d.o())) && (!d.p()) && (d.g() == 0))
    {
      g.startAnimation(localAlphaAnimation);
      h.startAnimation(localAlphaAnimation);
      ((TransitionDrawable)c.getBackground()).startTransition(cw.e);
      return;
    }
    e.startAnimation(localAlphaAnimation);
  }
  
  private void f()
  {
    Object localObject2 = new ReviewBroadcast();
    ((ReviewBroadcast)localObject2).setBusinessId(d.f().getId());
    ((ReviewBroadcast)localObject2).setRating(d.g());
    Object localObject1;
    User localUser;
    if (m)
    {
      localObject1 = ReviewState.DRAFTED;
      ((ReviewBroadcast)localObject2).setReviewState((ReviewState)localObject1);
      ((ReviewBroadcast)localObject2).setConvertedToTip(m);
      ((ReviewBroadcast)localObject2).setText(d.k());
      ((ReviewBroadcast)localObject2).setId(i);
      new ObjectDirtyEvent((Parcelable)localObject2, "com.yelp.android.review.state.update").a(getActivity());
      localObject1 = ActivityReviewComplete.a(d.f(), i, k, l, m, d.k(), d.g(), getActivity(), n, o);
      if (getActivity().getIntent().getBooleanExtra("yelp:external_request", false)) {
        ((Intent)localObject1).putExtra("yelp:external_request", true);
      }
      localUser = AppData.b().m().s();
      localObject2 = AppData.b().f();
      if ((m) || (localUser.getReviewCount() != 0) || (!((i)localObject2).y())) {
        break label286;
      }
      ActivityElitePrompt.a((Intent)localObject1, getActivity(), localUser.getNameWithoutPeriod());
    }
    for (;;)
    {
      if ((!m) && (j != ReviewState.FINISHED_RECENTLY) && (j != ReviewState.FINISHED_NOT_RECENTLY)) {
        localUser.addReviewCount(1);
      }
      startActivity((Intent)localObject1);
      getActivity().finish();
      return;
      localObject1 = ReviewState.FINISHED_RECENTLY;
      break;
      label286:
      if ((localUser.getUserPhotoCount() == 0) && (((i)localObject2).z()))
      {
        FragmentActivity localFragmentActivity = getActivity();
        String str = localUser.getNameWithoutPeriod();
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
    localAlphaAnimation.setDuration(cw.c);
    localAlphaAnimation.setAnimationListener(new ax(this));
    localView.startAnimation(localAlphaAnimation);
  }
  
  private boolean h()
  {
    View localView = ((YelpActivity)getActivity()).getSupportActionBar().a();
    return (localView != null) && (localView.getTag().equals("stars"));
  }
  
  public void a(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public boolean b()
  {
    Intent localIntent = z.a(getActivity(), AppData.b().m().h(), p, ActivityRetryReviewShare.class);
    if (localIntent != null)
    {
      startActivityForResult(localIntent, 1002);
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
      switch (aq.a[localShareType.ordinal()])
      {
      default: 
        break;
      case 1: 
      case 2: 
        AppData.a(ReviewEventIri.ReviewWriteShare, "social_network", localShareType.getTypeString());
      }
    }
    getActivity().startService(ShareService.a(getActivity(), ShareService.ShareObjectType.REVIEW, i, p, false));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
    case 1002: 
      do
      {
        return;
      } while (paramInt2 != -1);
      p = new LinkedList(f.a(paramIntent.getIntArrayExtra("yelp:retry_shares"), ShareRequest.ShareType.values()));
      c();
      f();
      return;
    }
    d();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = ((ao)paramActivity);
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
    e = paramLayoutInflater.inflate(2130903227, paramViewGroup, false);
    f = ((TextView)e.findViewById(2131493593));
    c = ((ViewGroup)e.findViewById(2131493589));
    paramLayoutInflater = (SpannableFrameLayout)e.findViewById(2131493587);
    a = ((StarsView)e.findViewById(2131493590));
    g = ((SpannableFrameLayout)e.findViewById(2131493591));
    h = e.findViewById(2131493594);
    q = ((ToggleButton)e.findViewById(2131493596));
    r = ((ToggleButton)e.findViewById(2131493595));
    q.setOnCheckedChangeListener(new ap(this));
    r.setOnCheckedChangeListener(new ar(this));
    z.a(null, getActivity().getPreferences(0), null, q, r);
    a.setNumStars(d.g());
    a.setOnStarsClicked(new as(this));
    g.setOnTouchListener(new at(this));
    f.setOnClickListener(new au(this));
    j = d.l();
    if ((j == ReviewState.FINISHED_NOT_RECENTLY) && (!d.o()))
    {
      paramLayoutInflater.setVisibility(0);
      paramLayoutInflater.setLeft(true);
      f.setText(d.k());
      if ((!TextUtils.isEmpty(d.k())) && (!d.q())) {
        break label460;
      }
      h.setVisibility(8);
      label352:
      setHasOptionsMenu(true);
      if (getActivity() != null) {
        ((YelpActivity)getActivity()).updateOptionsMenu();
      }
      if (!h()) {
        break label488;
      }
      g();
    }
    for (;;)
    {
      return e;
      if (d.p())
      {
        ((TextView)e.findViewById(2131493588)).setText(2131165461);
        paramLayoutInflater.setVisibility(0);
        paramLayoutInflater.setLeft(true);
        break;
      }
      paramLayoutInflater.setVisibility(8);
      paramLayoutInflater = (SpannableFrameLayout)c;
      paramLayoutInflater.setLeft(true);
      paramLayoutInflater.refreshDrawableState();
      break;
      label460:
      paramLayoutInflater = cw.d(getActivity(), null);
      paramLayoutInflater.setStartOffset(cw.d);
      h.startAnimation(paramLayoutInflater);
      break label352;
      label488:
      a.setVisibility(0);
    }
  }
  
  public void onDestroy()
  {
    if (s != null)
    {
      s.cancel(true);
      s.setCallback(null);
    }
    super.onDestroy();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131494118);
    paramMenu.setTitle(getString(2131166352));
    paramMenu.setOnMenuItemClickListener(new av(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewOverviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */