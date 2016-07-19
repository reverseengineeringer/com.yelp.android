package com.yelp.android.ui.activities.friendcheckins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewStub;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.am;
import com.yelp.android.appdata.webrequests.am.a;
import com.yelp.android.appdata.webrequests.am.b;
import com.yelp.android.appdata.webrequests.am.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ek;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.ExternalCheckIn;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInType;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.ui.widgets.UsersWhoLikedThisView;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.ui.widgets.c;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class CommentOnCheckIn
  extends YelpActivity
  implements TextWatcher, View.OnClickListener, View.OnFocusChangeListener, AdapterView.OnItemClickListener, TextView.OnEditorActionListener, ApiRequest.b<am.a>, c
{
  YelpCheckIn a;
  protected Runnable b = new Runnable()
  {
    public void run()
    {
      if ((CommentOnCheckIn.a(CommentOnCheckIn.this).getActiveNetworkInfo() != null) && (CommentOnCheckIn.a(CommentOnCheckIn.this).getActiveNetworkInfo().isConnected()))
      {
        if (CommentOnCheckIn.b(CommentOnCheckIn.this) != null) {
          CommentOnCheckIn.b(CommentOnCheckIn.this).a(true);
        }
        CommentOnCheckIn.a(CommentOnCheckIn.this, new am.b(CommentOnCheckIn.this, CommentOnCheckIn.c(CommentOnCheckIn.this), a()));
        CommentOnCheckIn.b(CommentOnCheckIn.this).f(new Void[0]);
      }
    }
  };
  private ListView c;
  private TextView d;
  private b e;
  private TextView f;
  private TextView g;
  private UsersWhoLikedThisView h;
  private ImageView i;
  private View j;
  private String k;
  private Uri l;
  private List<CheckInFeedback> m;
  private YelpBusiness n;
  private am o;
  private ConnectivityManager p;
  private ConnectivityReceiver q;
  private View r;
  private final c.a s = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      b();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      b();
    }
  };
  
  public static Intent a(Context paramContext, YelpCheckIn paramYelpCheckIn, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, CommentOnCheckIn.class);
    paramContext.putExtra("extra.check_in", paramYelpCheckIn);
    paramContext.putExtra("keyboard", paramBoolean);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpCheckIn paramYelpCheckIn, boolean paramBoolean, Uri paramUri)
  {
    paramContext = a(paramContext, paramYelpCheckIn, paramBoolean);
    paramContext.setData(paramUri);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, CommentOnCheckIn.class);
    paramContext.putExtra("check_in_id", paramString);
    paramContext.putExtra("keyboard", false);
    return paramContext;
  }
  
  public static YelpCheckIn a(Intent paramIntent)
  {
    return (YelpCheckIn)paramIntent.getParcelableExtra("extra.check_in");
  }
  
  private void d()
  {
    f.requestFocus();
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(f, 0);
  }
  
  private void e()
  {
    f.clearFocus();
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(f.getWindowToken(), 0);
  }
  
  protected Comment a()
  {
    if ((e == null) || (e.isEmpty())) {}
    for (Comment localComment1 = null;; localComment1 = (Comment)e.getItem(e.getCount() - 1))
    {
      Comment localComment2 = localComment1;
      if (localComment1 == null)
      {
        localComment2 = localComment1;
        if (a != null)
        {
          localComment2 = localComment1;
          if (a.A() != null) {
            localComment2 = a.A();
          }
        }
      }
      return localComment2;
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, am.a parama)
  {
    if (b != null) {
      m = b;
    }
    if (a == null)
    {
      a(c, d, null);
      c.setAdapter(e);
    }
    if (c != null)
    {
      a = c;
      ExternalCheckIn.a(a, d);
      getIntent().putExtra("extra.check_in", a);
      setResult(-1, getIntent());
    }
    parama = new LinkedList(a);
    if ((a.A() != null) && (parama.size() > 0) && (((Comment)parama.get(0)).d().equals(a.A().d()))) {
      parama.remove(0);
    }
    c.setEmptyView(null);
    findViewById(2131689967).setVisibility(8);
    int i2;
    if ((paramApiRequest instanceof am.c))
    {
      e.a(this);
      f.setText("");
      i2 = e.getCount();
      i1 = parama.size() - 1;
      if (i1 < 0) {
        break label489;
      }
      paramApiRequest = (Comment)parama.get(i1);
      if (!getAppData().q().a(paramApiRequest.b().i())) {}
    }
    label476:
    label489:
    for (int i1 = i2 + i1;; i1 = i2)
    {
      e.a(parama);
      e.notifyDataSetChanged();
      c.setSelectionFromTop(i1, n.e);
      e();
      for (i1 = 0;; i1 = 1)
      {
        if (getIntent().getBooleanExtra("keyboard", false))
        {
          d();
          getIntent().putExtra("keyboard", false);
        }
        a.a(Math.max(a.u(), e.getCount()));
        a(h, d, g, i, a);
        getHelper().h();
        c.setTranscriptMode(i1);
        i2 = e.getCount();
        i1 = i2;
        if (a.A() != null) {
          i1 = i2 + 1;
        }
        if (i1 < a.u()) {
          break label476;
        }
        if (a.x()) {
          c.postDelayed(b, 10000L);
        }
        return;
        i1 -= 1;
        break;
        if (!parama.isEmpty())
        {
          e.a(parama);
          e.notifyDataSetChanged();
        }
      }
      c.post(b);
      return;
    }
  }
  
  void a(YelpCheckIn paramYelpCheckIn, final YelpBusiness paramYelpBusiness, View paramView)
  {
    if (paramView != null) {}
    for (paramView = new View[] { paramView, r };; paramView = new View[] { r })
    {
      int i2 = paramView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject1 = paramView[i1];
        ((WebImageView)((View)localObject1).findViewById(2131690074)).setImageUrl(paramYelpCheckIn.c(), 2130837702);
        ((TextView)((View)localObject1).findViewById(2131690610)).setText(getString(2131166825, new Object[] { StringUtils.c(paramYelpCheckIn.a()) }));
        ((TextView)((View)localObject1).findViewById(2131689684)).setText(paramYelpBusiness.z());
        g = ((TextView)((View)localObject1).findViewById(2131690606));
        i = ((ImageView)((View)localObject1).findViewById(2131690612));
        h = ((UsersWhoLikedThisView)((View)localObject1).findViewById(2131690613));
        Object localObject2 = (TextView)((View)localObject1).findViewById(2131690443);
        ((TextView)localObject2).setText(getResources().getQuantityString(2131230757, paramYelpBusiness.N(), new Object[] { Integer.valueOf(paramYelpBusiness.N()) }));
        ar.a((TextView)localObject2, paramYelpBusiness.P());
        localObject2 = (TextView)((View)localObject1).findViewById(2131690336);
        ((TextView)localObject2).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, paramYelpCheckIn.e()));
        a(h, (TextView)localObject2, g, i, paramYelpCheckIn);
        localObject2 = (LeftDrawableToggleButton)((View)localObject1).findViewById(2131690462);
        ((LeftDrawableToggleButton)localObject2).setChecked(paramYelpCheckIn.n().c());
        ((LeftDrawableToggleButton)localObject2).setOnCheckedChangeListener(this);
        ((View)localObject1).findViewById(2131690608).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            paramAnonymousView.getContext().startActivity(ActivityBusinessPage.b(paramAnonymousView.getContext(), paramYelpBusiness));
          }
        });
        i1 += 1;
      }
    }
    d = ((TextView)r.findViewById(2131690607));
    n = paramYelpBusiness;
  }
  
  public void a(UsersWhoLikedThisView paramUsersWhoLikedThisView, TextView paramTextView1, TextView paramTextView2, ImageView paramImageView, YelpCheckIn paramYelpCheckIn)
  {
    paramUsersWhoLikedThisView.a(paramYelpCheckIn.n().c(), m, paramYelpCheckIn.n().d());
    paramUsersWhoLikedThisView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (CommentOnCheckIn.d(CommentOnCheckIn.this).size() == 1)
        {
          startActivity(ActivityUserProfile.a(CommentOnCheckIn.this, ((CheckInFeedback)CommentOnCheckIn.d(CommentOnCheckIn.this).get(0)).i()));
          return;
        }
        startActivity(WhoLikedThisCheckIn.a(CommentOnCheckIn.this, a));
      }
    });
    if (paramYelpCheckIn.A() != null)
    {
      paramTextView2.setText(paramYelpCheckIn.A().c());
      paramTextView2.setVisibility(0);
      paramImageView.setVisibility(0);
    }
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    View localView = j;
    if (!TextUtils.isEmpty(paramEditable)) {}
    for (boolean bool = true;; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
  
  void b()
  {
    c.removeCallbacks(b);
    c.post(b);
    q.a(this);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  void c()
  {
    if (o != null)
    {
      o.a(true);
      o.a(null);
    }
    q.a();
    c.removeCallbacks(b);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInCommentThread;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = (YelpCheckIn)getIntent().getParcelableExtra("extra.check_in");
    if (parama != null) {}
    for (parama = parama.z();; parama = getIntent().getData().getLastPathSegment()) {
      return Collections.singletonMap("check_in_id", parama);
    }
  }
  
  public <CheckableView extends View,  extends Checkable> void onCheckedChanged(CheckableView paramCheckableView)
  {
    c();
    String str = a.z();
    boolean bool = ((Checkable)paramCheckableView).isChecked();
    paramCheckableView = new HashMap();
    paramCheckableView.put("business_id", a.k());
    paramCheckableView.put("check_in_id", str);
    paramCheckableView.put("is_positive", Boolean.valueOf(bool));
    paramCheckableView.put("source", "check_in_comments");
    AppData.a(EventIri.CheckInFeedback, paramCheckableView);
    new ek(str, bool, s).f(new Void[0]);
    paramCheckableView = a.n();
    if (bool)
    {
      paramCheckableView.a();
      paramCheckableView = new CheckInFeedback(a, getAppData().q().p());
      m.add(paramCheckableView);
    }
    for (;;)
    {
      getIntent().putExtra("extra.check_in", a);
      setResult(-1, getIntent());
      a(h, d, g, i, a);
      return;
      paramCheckableView.b();
      paramCheckableView = (CheckInFeedback)User.a(m);
      if (paramCheckableView != null) {
        m.remove(paramCheckableView);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    CharSequence localCharSequence = f.getText();
    if ((TextUtils.isEmpty(localCharSequence)) || (localCharSequence.length() > getResources().getInteger(2131492886))) {
      return;
    }
    if ((o != null) && (o.a(AsyncTask.Status.RUNNING))) {
      o.a(true);
    }
    paramView.removeCallbacks(b);
    o = new am.c(this, a, a(), String.valueOf(localCharSequence));
    o.f(new Void[0]);
    getHelper().a(o);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903127);
    q = new ConnectivityReceiver();
    p = ((ConnectivityManager)getSystemService("connectivity"));
    c = ((ListView)findViewById(2131689771));
    c.setOnItemClickListener(this);
    f = ((TextView)findViewById(2131690701));
    j = findViewById(2131690702);
    m = new ArrayList();
    e = new b();
    a = ((YelpCheckIn)getIntent().getParcelableExtra("extra.check_in"));
    r = getLayoutInflater().inflate(2130903375, c, false);
    c.addHeaderView(r, "HEADER", true);
    c.setEmptyView(findViewById(2131689967));
    if ((a != null) && (a.y() != null))
    {
      k = a.z();
      paramBundle = (ViewStub)findViewById(2131689967).findViewById(2131689968);
      a(a, a.d(), paramBundle.inflate());
      c.setAdapter(e);
    }
    for (;;)
    {
      if ((a == null) && (k == null))
      {
        AppData.a(this, "We tried to load a comment thread without knowing which check-in", new Object[0]);
        finish();
      }
      j.setOnClickListener(this);
      f.setOnEditorActionListener(this);
      f.setOnFocusChangeListener(this);
      f.addTextChangedListener(this);
      if (getIntent().getBooleanExtra("keyboard", false)) {
        getWindow().setSoftInputMode(4);
      }
      return;
      if (a != null)
      {
        k = a.z();
        a = null;
      }
      else
      {
        k = getIntent().getStringExtra("check_in_id");
        if (k == null)
        {
          l = getIntent().getData();
          k = l.getLastPathSegment();
        }
      }
    }
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 0)
    {
      onClick(j);
      return true;
    }
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    getHelper().h();
    if ((paramApiRequest instanceof am.c)) {
      as.a(paramYelpException.getMessage(this), 0);
    }
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1024))
    {
      as.a(paramYelpException.getMessage(this), 0);
      finish();
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (i1 != 0) {
        c.postDelayed(b, 20000L);
      }
      return;
    }
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    paramView = j;
    if (!TextUtils.isEmpty(f.getText())) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      paramView.setEnabled(paramBoolean);
      return;
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof Comment))
    {
      paramAdapterView = ((Comment)paramAdapterView).b();
      if (TextUtils.equals(a.i(), paramAdapterView.ae())) {
        startActivity(ActivityUserProfile.a(this, a.y()));
      }
    }
    while ((paramAdapterView != null) || (paramInt != 0))
    {
      return;
      startActivity(ActivityUserProfile.a(this, paramAdapterView));
      return;
    }
    startActivity(ActivityBusinessPage.b(this, n));
  }
  
  protected void onPause()
  {
    super.onPause();
    c();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    e.a(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (l != null) {
      Notifier.a(this, Notifier.NotificationType.Checkin, Integer.valueOf(CheckInPushNotificationHandler.CheckInType.getNotificationIdFromUri(l)));
    }
    b();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    e.b(paramBundle);
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public static final class ConnectivityReceiver
    extends BroadcastReceiver
  {
    public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    private CommentOnCheckIn b;
    private boolean c;
    
    public void a()
    {
      if (b != null)
      {
        b.unregisterReceiver(this);
        b = null;
        c = false;
      }
    }
    
    public void a(CommentOnCheckIn paramCommentOnCheckIn)
    {
      if (b != paramCommentOnCheckIn)
      {
        b = paramCommentOnCheckIn;
        b.registerReceiver(this, a);
      }
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((b != null) && ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())))
      {
        if ((!paramIntent.getBooleanExtra("noConnectivity", false)) || (!c)) {
          break label49;
        }
        b.c();
        c = false;
      }
      label49:
      while (c) {
        return;
      }
      c = true;
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */