package com.yelp.android.ui.activities.reviews;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AlphaAnimation;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.g.g;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.av;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

public class ReviewComposeFragment
  extends ReviewBaseFragment
  implements ApiRequest.b<dy.a>, PanelError.a
{
  private dy.a A;
  private Timer B;
  private Runnable C;
  private TimerTask D;
  private TextWatcher E;
  private final View.OnClickListener F = new ReviewComposeFragment.1(this);
  private TextView e;
  private EditText f;
  private ScrollToLoadListView g;
  private PanelError h;
  private b i;
  private View j;
  private LinearLayout k;
  private TextView l;
  private ViewTreeObserver.OnGlobalLayoutListener m;
  private boolean n;
  private YelpBusiness o;
  private int p = -1;
  private int q = -1;
  private int r = -1;
  private int s = 0;
  private int t;
  private int u;
  private boolean v;
  private boolean w;
  private List<ReviewThreshold> x;
  private dy y;
  private YelpException z;
  
  private void a(long paramLong)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(paramLong);
    localAlphaAnimation.setAnimationListener(new ReviewComposeFragment.11(this));
    if (c.findViewById(2131690289) != null) {
      a.startAnimation(localAlphaAnimation);
    }
  }
  
  private void a(Configuration paramConfiguration)
  {
    if (!b(paramConfiguration))
    {
      e.setVisibility(0);
      return;
    }
    e.setVisibility(8);
  }
  
  private void a(Rect paramRect)
  {
    int i1 = ((YelpActivity)getActivity()).getSupportActionBar().c();
    int i2 = paramRect.height() - i1 - k.findViewById(2131690292).getHeight();
    i1 = i2;
    if (c.getVisibility() != 8) {
      i1 = i2 - c.getHeight();
    }
    i2 = i1;
    if (!n)
    {
      i2 = i1;
      if (l != null) {
        if (!i.isEmpty()) {
          break label115;
        }
      }
    }
    label115:
    for (i2 = l.getHeight();; i2 = g.getHeight())
    {
      i2 = i1 - (i2 + j.getHeight());
      f.setHeight(i2);
      return;
    }
  }
  
  private void a(Spanned paramSpanned)
  {
    if (!isAdded()) {}
    label27:
    label84:
    label259:
    label261:
    label267:
    label276:
    label295:
    do
    {
      return;
      int i1;
      int i2;
      TextView localTextView;
      if ((y == null) || (y.v()))
      {
        i1 = 1;
        if ((!TextUtils.isEmpty(e.getText())) && (e.getText().toString().equals(paramSpanned.toString()))) {
          break label259;
        }
        localObject = e;
        if ((!i.isEmpty()) || (i1 == 0)) {
          break label261;
        }
        i2 = 0;
        ((TextView)localObject).setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
        localTextView = e;
        if ((!i.isEmpty()) || (i1 == 0)) {
          break label267;
        }
      }
      for (Object localObject = null;; localObject = F)
      {
        localTextView.setOnClickListener((View.OnClickListener)localObject);
        if ((!getString(2131166529).equals(paramSpanned.toString())) || (!i.isEmpty()) || (e.getVisibility() != 0)) {
          break label295;
        }
        paramSpanned = new AlphaAnimation(1.0F, 0.0F);
        paramSpanned.setDuration(av.a);
        paramSpanned.setAnimationListener(new ReviewComposeFragment.2(this));
        if ((e.getAnimation() != null) || (e.getText().toString().equals(getString(2131166585))) || (e.getText().toString().equals(getString(2131166529)))) {
          break label276;
        }
        e.startAnimation(paramSpanned);
        return;
        i1 = 0;
        break label27;
        break;
        i2 = 2130838627;
        break label84;
      }
      e.setText("");
      e.setVisibility(4);
      return;
    } while ((e.getVisibility() != 0) && ((e.getVisibility() != 4) || ((i.isEmpty()) && (getString(2131166529).equals(paramSpanned.toString())))));
    e.setText(paramSpanned);
    av.c(e, av.a);
  }
  
  private void a(dy.a parama)
  {
    g.setEmptyView(l);
    if (a.size() == 0) {
      g.f();
    }
    for (;;)
    {
      if (n) {
        m();
      }
      s += 10;
      return;
      if (i.isEmpty())
      {
        i.a(a);
      }
      else if (a.size() > 0)
      {
        i.a().addAll(a);
        i.notifyDataSetChanged();
      }
    }
  }
  
  private void a(YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness.N() > 0) {
      a(paramYelpBusiness.aD());
    }
  }
  
  private boolean b(Configuration paramConfiguration)
  {
    return (keyboard == 2) && (hardKeyboardHidden == 1);
  }
  
  private void c()
  {
    if (((d.l() != ReviewState.FINISHED_NOT_RECENTLY) || (d.o())) && (!d.p()))
    {
      av.c(b, av.e);
      av.c(f, av.e);
      av.c(j, av.e);
      av.c(g, av.e);
      if ((o.N() == 0) && (u == 1)) {
        av.c(l, av.e);
      }
      return;
    }
    av.c(k, av.e);
  }
  
  private void e()
  {
    e.setOnClickListener(new ReviewComposeFragment.8(this));
  }
  
  private void f()
  {
    i();
    h();
  }
  
  private void g()
  {
    E = new ReviewComposeFragment.9(this);
    f.addTextChangedListener(E);
  }
  
  private void h()
  {
    e.setOnClickListener(F);
    k.getViewTreeObserver().addOnGlobalLayoutListener(m);
  }
  
  private void i()
  {
    m = new ReviewComposeFragment.10(this);
  }
  
  private View j()
  {
    Object localObject = (ViewGroup)a.getParent();
    if (localObject != null)
    {
      ((ViewGroup)localObject).removeView(a);
      ((ViewGroup)localObject).removeView(b);
    }
    c.setVisibility(8);
    localObject = new LinearLayout(getActivity());
    ((LinearLayout)localObject).setLayoutParams(new ViewGroup.LayoutParams(new ViewGroup.LayoutParams(-1, -2)));
    ((LinearLayout)localObject).setGravity(17);
    ((LinearLayout)localObject).setOrientation(1);
    ((LinearLayout)localObject).addView(a);
    ((LinearLayout)localObject).setTag("stars");
    ActionBar localActionBar = ((YelpActivity)getActivity()).getSupportActionBar();
    localActionBar.c(true);
    localActionBar.a((View)localObject);
    return (View)localObject;
  }
  
  private String k()
  {
    int i3 = 1;
    int i1;
    int i2;
    if ((d.l() == ReviewState.FINISHED_NOT_RECENTLY) && (!d.o()))
    {
      i1 = 1;
      if (g.getVisibility() != 0) {
        break label72;
      }
      i2 = 1;
      label43:
      if (u != 2) {
        break label77;
      }
    }
    for (;;)
    {
      if ((i3 == 0) || (i2 == 0)) {
        break label82;
      }
      return getString(2131165986);
      i1 = 0;
      break;
      label72:
      i2 = 0;
      break label43;
      label77:
      i3 = 0;
    }
    label82:
    if (i1 != 0) {
      return getString(2131166532);
    }
    return getString(2131166529);
  }
  
  private Spanned l()
  {
    int i1 = f.getText().toString().length();
    Iterator localIterator = x.iterator();
    ReviewThreshold localReviewThreshold;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localReviewThreshold = (ReviewThreshold)localIterator.next();
    } while (i1 < localReviewThreshold.a());
    for (;;)
    {
      if (localReviewThreshold == null) {
        return new SpannedString(k());
      }
      return StringUtils.a(Html.fromHtml(localReviewThreshold.e()), Color.rgb(localReviewThreshold.d(), localReviewThreshold.b(), localReviewThreshold.c()));
      localReviewThreshold = null;
    }
  }
  
  private void m()
  {
    if (!w) {}
    do
    {
      return;
      if (!n) {
        break;
      }
    } while ((y != null) && (!y.v()));
    a(l());
    return;
    n();
  }
  
  private void n()
  {
    if (!isAdded()) {}
    Spanned localSpanned;
    do
    {
      return;
      if (u == 1)
      {
        e.setCompoundDrawablesWithIntrinsicBounds(2130838628, 0, 0, 0);
        e.setOnClickListener(F);
        e.setText(getText(2131166585));
        av.c(e, av.a);
        return;
      }
      localSpanned = l();
      if (o.N() <= 0) {
        break;
      }
    } while ((!TextUtils.isEmpty(e.getText())) && (e.getText().toString().equals(localSpanned.toString())));
    e.setText(l());
    av.c(e, av.a);
    return;
    p();
  }
  
  private void o()
  {
    g.f();
    if (i.getCount() == 0)
    {
      PanelError localPanelError = b();
      localPanelError.a(ErrorType.getTypeFromException(z));
      localPanelError.setBackgroundColor(getActivity().getResources().getColor(2131624261));
      g.setEmptyView(localPanelError);
    }
  }
  
  private void p()
  {
    g.setVisibility(8);
    e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    e.setText(getString(2131165911));
    e.setOnClickListener(null);
    av.c(e, av.a);
  }
  
  private void q()
  {
    if (z != null)
    {
      o();
      z = null;
    }
    while (A == null) {
      return;
    }
    a(A);
    A = null;
  }
  
  private void r()
  {
    if ((!g.g()) || (o.N() == i.getCount())) {
      return;
    }
    PanelLoading localPanelLoading = new PanelLoading(getActivity());
    localPanelLoading.a();
    g.a(new ReviewComposeFragment.3(this), localPanelLoading);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dy.a parama)
  {
    if (g != null)
    {
      a(parama);
      return;
    }
    A = parama;
  }
  
  public void a(String paramString)
  {
    if ((y == null) || (y.m() == AsyncTask.Status.FINISHED))
    {
      y = new dy(paramString, s, 10, Locale.getDefault(), this);
      y.f(new Void[0]);
    }
  }
  
  public PanelError b()
  {
    if (h == null)
    {
      h = new PanelError(getActivity());
      k.addView(h);
      h.a(this);
      h.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0F));
      h.setVisibility(8);
    }
    return h;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    t = ((Integer)bhdb).intValue();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = ((c)paramActivity);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (i == null) {
      i = new b();
    }
    o = d.f();
    C = new ReviewComposeFragment.4(this);
    p = -1;
    v = false;
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelableArrayList("extra_reviews");
      if (paramBundle != null)
      {
        i.a(paramBundle);
        s = paramBundle.size();
      }
    }
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755009, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (getActivity() != null) {
      ((YelpActivity)getActivity()).updateOptionsMenu();
    }
    k = ((LinearLayout)paramLayoutInflater.inflate(2130903253, paramViewGroup, false));
    g = ((ScrollToLoadListView)k.findViewById(2131690294));
    e = ((TextView)k.findViewById(2131690292));
    f = ((EditText)k.findViewById(2131690291));
    a = ((StarsView)k.findViewById(2131690289));
    j = k.findViewById(2131690293);
    l = ((TextView)k.findViewById(2131690295));
    b = k.findViewById(2131690290);
    c = ((ViewGroup)k.findViewById(2131690288));
    u = getResourcesgetConfigurationorientation;
    w = false;
    q();
    r();
    g.setAdapter(i);
    f.setText(d.k());
    if (d.g() > 0)
    {
      b.setVisibility(8);
      int i1 = getActivity().getResources().getDimensionPixelOffset(2131361958);
      c.setPadding(0, i1 + n.a(1), 0, 0);
      if (paramBundle == null) {
        a(0L);
      }
    }
    else
    {
      paramLayoutInflater = ((YelpActivity)getActivity()).getSupportActionBar().a();
      paramViewGroup = a;
      if (!paramLayoutInflater.getTag().equals("stars")) {
        break label451;
      }
      paramLayoutInflater = StarsView.StarStyle.SMALL;
      label313:
      paramViewGroup.setStarStyle(paramLayoutInflater);
      a.setNumStars(d.g());
      n = false;
      x = d.j();
      Collections.sort(x);
      if (u != 2) {
        break label465;
      }
      if (o.N() <= 0) {
        break label458;
      }
      e.setText(getString(2131165986));
      e.setCompoundDrawablesWithIntrinsicBounds(2130838627, 0, 0, 0);
      av.c(e, av.a);
      label415:
      e();
    }
    for (;;)
    {
      a.setOnStarsClicked(new ReviewComposeFragment.5(this));
      g();
      return k;
      j();
      break;
      label451:
      paramLayoutInflater = StarsView.StarStyle.LARGE;
      break label313;
      label458:
      p();
      break label415;
      label465:
      f();
      if (paramBundle == null) {
        k.postDelayed(C, 750L);
      } else {
        w = true;
      }
    }
  }
  
  public void onDestroy()
  {
    if (y != null)
    {
      y.a(true);
      y.a(null);
    }
    f.removeTextChangedListener(E);
    k.removeCallbacks(C);
    k.getViewTreeObserver().removeOnGlobalLayoutListener(m);
    super.onDestroy();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    z = paramYelpException;
    if (((paramApiRequest instanceof dy)) && (g != null)) {
      o();
    }
  }
  
  public void onPause()
  {
    B.cancel();
    B = null;
    D.cancel();
    k.removeCallbacks(C);
    D = null;
    d.a(true);
    super.onPause();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if (!isAdded()) {
      return;
    }
    paramMenu = paramMenu.findItem(2131690992);
    paramMenu.setTitle(getString(2131165730));
    paramMenu.setOnMenuItemClickListener(new ReviewComposeFragment.7(this));
  }
  
  public void onResume()
  {
    c();
    d.e();
    D = new ReviewComposeFragment.6(this);
    if (o.N() == 0)
    {
      g.f();
      if (u != 1) {
        break label94;
      }
      g.setEmptyView(l);
    }
    for (;;)
    {
      B = new Timer();
      B.schedule(D, 15000L, 15000L);
      super.onResume();
      return;
      label94:
      g.setVisibility(8);
      j.setVisibility(8);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("extra_reviews", new ArrayList(i.a()));
    super.onSaveInstanceState(paramBundle);
  }
  
  public void q_()
  {
    z = null;
    A = null;
    g.setEmptyView(null);
    h.setVisibility(8);
    r();
    a(o);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewComposeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */