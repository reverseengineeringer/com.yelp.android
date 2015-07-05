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
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.x;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cw;
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
  implements com.yelp.android.appdata.webrequests.m<ez>, aa
{
  private ez A;
  private Timer B;
  private Runnable C;
  private TimerTask D;
  private TextWatcher E;
  private final View.OnClickListener F = new ac(this);
  private TextView e;
  private EditText f;
  private ScrollToLoadListView g;
  private PanelError h;
  private z i;
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
  private ey y;
  private YelpException z;
  
  private int a(Rect paramRect)
  {
    int i1 = ((YelpActivity)getActivity()).getSupportActionBar().c();
    int i2 = paramRect.height() - i1 - k.findViewById(2131493582).getHeight();
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
          break label116;
        }
      }
    }
    label116:
    for (i2 = l.getHeight();; i2 = g.getHeight())
    {
      i2 = i1 - (i2 + j.getHeight());
      f.setHeight(i2);
      return i2;
    }
  }
  
  private void a(long paramLong)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(paramLong);
    localAlphaAnimation.setAnimationListener(new am(this));
    if (c.findViewById(2131493579) != null) {
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
  
  private void a(Spanned paramSpanned)
  {
    if (!isAdded()) {}
    label34:
    label91:
    label267:
    label269:
    label276:
    label285:
    label304:
    do
    {
      return;
      int i1;
      int i2;
      TextView localTextView;
      if ((y == null) || ((y != null) && (y.isCompleted())))
      {
        i1 = 1;
        if ((!TextUtils.isEmpty(e.getText())) && (e.getText().toString().equals(paramSpanned.toString()))) {
          break label267;
        }
        localObject = e;
        if ((!i.isEmpty()) || (i1 == 0)) {
          break label269;
        }
        i2 = 0;
        ((TextView)localObject).setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
        localTextView = e;
        if ((!i.isEmpty()) || (i1 == 0)) {
          break label276;
        }
      }
      for (Object localObject = null;; localObject = F)
      {
        localTextView.setOnClickListener((View.OnClickListener)localObject);
        if ((!getString(2131166531).equals(paramSpanned.toString())) || (!i.isEmpty()) || (e.getVisibility() != 0)) {
          break label304;
        }
        paramSpanned = new AlphaAnimation(1.0F, 0.0F);
        paramSpanned.setDuration(cw.a);
        paramSpanned.setAnimationListener(new ad(this));
        if ((e.getAnimation() != null) || (e.getText().toString().equals(getString(2131166576))) || (e.getText().toString().equals(getString(2131166531)))) {
          break label285;
        }
        e.startAnimation(paramSpanned);
        return;
        i1 = 0;
        break label34;
        break;
        i2 = 2130838307;
        break label91;
      }
      e.setText("");
      e.setVisibility(4);
      return;
    } while ((e.getVisibility() != 0) && ((e.getVisibility() != 4) || ((i.isEmpty()) && (getString(2131166531).equals(paramSpanned.toString())))));
    e.setText(paramSpanned);
    cw.c(e, cw.a);
  }
  
  private void a(ez paramez)
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
    if (paramYelpBusiness.getReviewCount() > 0) {
      a(paramYelpBusiness.getId());
    }
  }
  
  private boolean b(Configuration paramConfiguration)
  {
    return (keyboard == 2) && (hardKeyboardHidden == 1);
  }
  
  private void d()
  {
    if (((d.l() != ReviewState.FINISHED_NOT_RECENTLY) || (d.o())) && (!d.p()))
    {
      cw.c(b, cw.e);
      cw.c(f, cw.e);
      cw.c(j, cw.e);
      cw.c(g, cw.e);
      if ((o.getReviewCount() == 0) && (u == 1)) {
        cw.c(l, cw.e);
      }
      return;
    }
    cw.c(k, cw.e);
  }
  
  private void e()
  {
    e.setOnClickListener(new aj(this));
  }
  
  private void f()
  {
    i();
    h();
  }
  
  private void g()
  {
    E = new ak(this);
    f.addTextChangedListener(E);
  }
  
  private void h()
  {
    e.setOnClickListener(F);
    k.getViewTreeObserver().addOnGlobalLayoutListener(m);
  }
  
  private void i()
  {
    m = new al(this);
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
      return getString(2131165912);
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
      return getString(2131166533);
    }
    return getString(2131166531);
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
    } while (i1 < localReviewThreshold.getThreshold());
    for (;;)
    {
      if (localReviewThreshold == null) {
        return new SpannedString(k());
      }
      return StringUtils.a(Html.fromHtml(localReviewThreshold.getTextAtThreshold()), Color.rgb(localReviewThreshold.getRedVal(), localReviewThreshold.getGreenVal(), localReviewThreshold.getBlueVal()));
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
    } while ((y != null) && (!y.isCompleted()));
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
        e.setCompoundDrawablesWithIntrinsicBounds(2130838308, 0, 0, 0);
        e.setOnClickListener(F);
        e.setText(getText(2131166576));
        cw.c(e, cw.a);
        return;
      }
      localSpanned = l();
      if (o.getReviewCount() <= 0) {
        break;
      }
    } while ((!TextUtils.isEmpty(e.getText())) && (e.getText().toString().equals(localSpanned.toString())));
    e.setText(l());
    cw.c(e, cw.a);
    return;
    p();
  }
  
  private void o()
  {
    g.f();
    if (i.getCount() == 0)
    {
      PanelError localPanelError = c();
      localPanelError.a(ErrorType.getTypeFromException(z));
      localPanelError.setBackgroundColor(getActivity().getResources().getColor(2131362036));
      g.setEmptyView(localPanelError);
    }
  }
  
  private void p()
  {
    g.setVisibility(8);
    e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    e.setText(getString(2131165829));
    e.setOnClickListener(null);
    cw.c(e, cw.a);
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
    if ((!g.g()) || (o.getReviewCount() == i.getCount())) {
      return;
    }
    PanelLoading localPanelLoading = new PanelLoading(getActivity());
    localPanelLoading.a();
    g.a(new ae(this), localPanelLoading);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ez paramez)
  {
    if (g != null)
    {
      a(paramez);
      return;
    }
    A = paramez;
  }
  
  public void a(String paramString)
  {
    if ((y == null) || (y.getStatus() == AsyncTask.Status.FINISHED))
    {
      y = new ey(paramString, s, 10, Locale.getDefault(), this);
      y.execute(new String[0]);
    }
  }
  
  public PanelError c()
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
  
  public void m_()
  {
    z = null;
    A = null;
    g.setEmptyView(null);
    h.setVisibility(8);
    r();
    a(o);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = AppData.b().g();
    t = ((Integer)ngetActivityhgdb).intValue();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = ((ao)paramActivity);
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
      i = new z();
    }
    o = d.f();
    C = new af(this);
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
    k = ((LinearLayout)paramLayoutInflater.inflate(2130903226, paramViewGroup, false));
    g = ((ScrollToLoadListView)k.findViewById(2131493584));
    e = ((TextView)k.findViewById(2131493582));
    f = ((EditText)k.findViewById(2131493581));
    a = ((StarsView)k.findViewById(2131493579));
    j = k.findViewById(2131493583);
    l = ((TextView)k.findViewById(2131493585));
    b = k.findViewById(2131493580);
    c = ((ViewGroup)k.findViewById(2131493578));
    u = getResourcesgetConfigurationorientation;
    w = false;
    q();
    r();
    g.setAdapter(i);
    f.setText(d.k());
    if (d.g() > 0)
    {
      b.setVisibility(8);
      c.setPadding(0, cp.a(getActivity(), 2130772041) + com.yelp.android.appdata.ao.a(1), 0, 0);
      if (paramBundle == null) {
        a(0L);
      }
    }
    else
    {
      paramLayoutInflater = ((YelpActivity)getActivity()).getSupportActionBar().a();
      paramViewGroup = a;
      if (!paramLayoutInflater.getTag().equals("stars")) {
        break label445;
      }
      paramLayoutInflater = StarsView.StarSize.SMALL;
      label306:
      paramViewGroup.setStarSize(paramLayoutInflater);
      a.setNumStars(d.g());
      n = false;
      x = d.j();
      Collections.sort(x);
      if (u != 2) {
        break label459;
      }
      if (o.getReviewCount() <= 0) {
        break label452;
      }
      e.setText(getString(2131165912));
      e.setCompoundDrawablesWithIntrinsicBounds(2130838307, 0, 0, 0);
      cw.c(e, cw.a);
      label409:
      e();
    }
    for (;;)
    {
      a.setOnStarsClicked(new ag(this));
      g();
      return k;
      j();
      break;
      label445:
      paramLayoutInflater = StarsView.StarSize.LARGE;
      break label306;
      label452:
      p();
      break label409;
      label459:
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
      y.cancel(true);
      y.setCallback(null);
    }
    f.removeTextChangedListener(E);
    k.removeCallbacks(C);
    super.onDestroy();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    z = paramYelpException;
    if (((paramApiRequest instanceof ey)) && (g != null)) {
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
    paramMenu = paramMenu.findItem(2131494118);
    paramMenu.setTitle(getString(2131165653));
    paramMenu.setOnMenuItemClickListener(new ai(this));
  }
  
  public void onResume()
  {
    d();
    d.e();
    D = new ah(this);
    if (o.getReviewCount() == 0)
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewComposeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */