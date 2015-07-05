package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.am;
import com.yelp.android.appdata.webrequests.an;
import com.yelp.android.appdata.webrequests.ap;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.i;
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
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.ui.widgets.UsersWhoLikedThisView;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.ui.widgets.j;
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
  implements TextWatcher, View.OnClickListener, View.OnFocusChangeListener, AdapterView.OnItemClickListener, TextView.OnEditorActionListener, m<an>, j
{
  YelpCheckIn a;
  protected Runnable b = new e(this);
  private ListView c;
  private TextView d;
  private c e;
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
  private CommentOnCheckIn.ConnectivityReceiver q;
  private View r;
  private final i s = new f(this);
  
  public static Intent a(Context paramContext, YelpCheckIn paramYelpCheckIn, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, CommentOnCheckIn.class);
    paramContext.putExtra("czech in?", paramYelpCheckIn);
    paramContext.putExtra("boarding?", paramBoolean);
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
    paramContext.putExtra("boarding?", false);
    return paramContext;
  }
  
  public static YelpCheckIn a(Intent paramIntent)
  {
    return (YelpCheckIn)paramIntent.getParcelableExtra("czech in?");
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
          if (a.getPrimaryComment() != null) {
            localComment2 = a.getPrimaryComment();
          }
        }
      }
      return localComment2;
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, an paraman)
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
      ExternalCheckIn.updateCheckIn(a, d);
      getIntent().putExtra("czech in?", a);
      setResult(-1, getIntent());
    }
    paraman = new LinkedList(a);
    if ((a.getPrimaryComment() != null) && (paraman.size() > 0) && (((Comment)paraman.get(0)).getId().equals(a.getPrimaryComment().getId()))) {
      paraman.remove(0);
    }
    c.setEmptyView(null);
    findViewById(2131493311).setVisibility(8);
    int i2;
    if ((paramApiRequest instanceof ap))
    {
      e.a(this);
      f.setText("");
      i2 = e.getCount();
      i1 = paraman.size() - 1;
      if (i1 < 0) {
        break label489;
      }
      paramApiRequest = (Comment)paraman.get(i1);
      if (!getAppData().m().a(paramApiRequest.getUser().getUserId())) {}
    }
    label476:
    label489:
    for (int i1 = i2 + i1;; i1 = i2)
    {
      e.a(paraman);
      e.notifyDataSetChanged();
      c.setSelectionFromTop(i1, ao.e);
      e();
      for (i1 = 0;; i1 = 1)
      {
        if (getIntent().getBooleanExtra("boarding?", false))
        {
          d();
          getIntent().putExtra("boarding?", false);
        }
        a.updateCommentCount(Math.max(a.getCommentsCount(), e.getCount()));
        a(h, d, g, i, a);
        getHelper().h();
        c.setTranscriptMode(i1);
        i2 = e.getCount();
        i1 = i2;
        if (a.getPrimaryComment() != null) {
          i1 = i2 + 1;
        }
        if (i1 < a.getCommentsCount()) {
          break label476;
        }
        if (a.isCommentable()) {
          c.postDelayed(b, 10000L);
        }
        return;
        i1 -= 1;
        break;
        if (!paraman.isEmpty())
        {
          e.a(paraman);
          e.notifyDataSetChanged();
        }
      }
      c.post(b);
      return;
    }
  }
  
  void a(YelpCheckIn paramYelpCheckIn, YelpBusiness paramYelpBusiness, View paramView)
  {
    if (paramView != null) {}
    for (paramView = new View[] { paramView, r };; paramView = new View[] { r })
    {
      int i2 = paramView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject1 = paramView[i1];
        ((WebImageView)((View)localObject1).findViewById(2131493446)).setImageUrl(paramYelpCheckIn.getUserPhotoUrl(), 2130837659);
        ((TextView)((View)localObject1).findViewById(2131493782)).setText(getString(2131166856, new Object[] { StringUtils.c(paramYelpCheckIn.getUserName()) }));
        ((TextView)((View)localObject1).findViewById(2131493020)).setText(paramYelpBusiness.getDisplayName());
        g = ((TextView)((View)localObject1).findViewById(2131493777));
        i = ((ImageView)((View)localObject1).findViewById(2131493784));
        h = ((UsersWhoLikedThisView)((View)localObject1).findViewById(2131493785));
        Object localObject2 = (TextView)((View)localObject1).findViewById(2131493677);
        ((TextView)localObject2).setText(getResources().getQuantityString(2131623970, paramYelpBusiness.getReviewCount(), new Object[] { Integer.valueOf(paramYelpBusiness.getReviewCount()) }));
        cp.a((TextView)localObject2, paramYelpBusiness.getAvgRating());
        localObject2 = (TextView)((View)localObject1).findViewById(2131493611);
        ((TextView)localObject2).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, paramYelpCheckIn.getDateCreated()));
        a(h, (TextView)localObject2, g, i, paramYelpCheckIn);
        localObject2 = (LeftDrawableToggleButton)((View)localObject1).findViewById(2131493689);
        ((LeftDrawableToggleButton)localObject2).setChecked(paramYelpCheckIn.getFeedback().isLikedByUser());
        ((LeftDrawableToggleButton)localObject2).setOnCheckedChangeListener(this);
        ((View)localObject1).findViewById(2131493780).setOnClickListener(new g(this, paramYelpBusiness));
        i1 += 1;
      }
    }
    d = ((TextView)r.findViewById(2131493778));
    n = paramYelpBusiness;
  }
  
  public void a(UsersWhoLikedThisView paramUsersWhoLikedThisView, TextView paramTextView1, TextView paramTextView2, ImageView paramImageView, YelpCheckIn paramYelpCheckIn)
  {
    paramUsersWhoLikedThisView.a(paramYelpCheckIn.getFeedback().isLikedByUser(), m, paramYelpCheckIn.getFeedback().getPositiveFeedbackCount());
    paramUsersWhoLikedThisView.setOnClickListener(new h(this));
    if (paramYelpCheckIn.getPrimaryComment() != null)
    {
      paramTextView2.setText(paramYelpCheckIn.getPrimaryComment().getText());
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
    if ((o != null) && (o.is(AsyncTask.Status.RUNNING)))
    {
      o.cancel(true);
      o.setCallback(null);
    }
    q.a();
    c.removeCallbacks(b);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInCommentThread;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = (YelpCheckIn)getIntent().getParcelableExtra("czech in?");
    if (paramb != null) {}
    for (paramb = paramb.getId();; paramb = getIntent().getData().getLastPathSegment()) {
      return Collections.singletonMap("check_in_id", paramb);
    }
  }
  
  public <CheckableView extends View,  extends Checkable> void onCheckedChanged(CheckableView paramCheckableView)
  {
    c();
    String str = a.getId();
    boolean bool = ((Checkable)paramCheckableView).isChecked();
    paramCheckableView = new HashMap();
    paramCheckableView.put("business_id", a.getBusinessId());
    paramCheckableView.put("check_in_id", str);
    paramCheckableView.put("is_positive", Boolean.valueOf(bool));
    paramCheckableView.put("source", "check_in_comments");
    AppData.a(EventIri.CheckInFeedback, paramCheckableView);
    new fo(str, bool, s).execute(new Void[0]);
    paramCheckableView = a.getFeedback();
    if (bool)
    {
      paramCheckableView.addPositiveFeedback();
      paramCheckableView = new CheckInFeedback(a, getAppData().m().s());
      m.add(paramCheckableView);
    }
    for (;;)
    {
      getIntent().putExtra("czech in?", a);
      setResult(-1, getIntent());
      a(h, d, g, i, a);
      return;
      paramCheckableView.removePositiveFeedback();
      paramCheckableView = (CheckInFeedback)User.getCurrentUserInCollection(m);
      if (paramCheckableView != null) {
        m.remove(paramCheckableView);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    CharSequence localCharSequence = f.getText();
    if ((TextUtils.isEmpty(localCharSequence)) || (localCharSequence.length() > getResources().getInteger(2131558414))) {
      return;
    }
    if ((o != null) && (o.is(AsyncTask.Status.RUNNING))) {
      o.cancel(true);
    }
    paramView.removeCallbacks(b);
    o = new ap(this, a, a(), String.valueOf(localCharSequence));
    o.execute(new Void[0]);
    getHelper().a(o);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903118);
    q = new CommentOnCheckIn.ConnectivityReceiver();
    p = ((ConnectivityManager)getSystemService("connectivity"));
    c = ((ListView)findViewById(2131493087));
    c.setOnItemClickListener(this);
    f = ((TextView)findViewById(2131493866));
    j = findViewById(2131493867);
    m = new ArrayList();
    e = new c();
    a = ((YelpCheckIn)getIntent().getParcelableExtra("czech in?"));
    r = getLayoutInflater().inflate(2130903284, c, false);
    c.addHeaderView(r, "HEADER", true);
    c.setEmptyView(findViewById(2131493311));
    if ((a != null) && (a.getUser() != null))
    {
      k = a.getId();
      paramBundle = (ViewStub)findViewById(2131493311).findViewById(2131493312);
      a(a, a.getBusiness(), paramBundle.inflate());
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
      if (getIntent().getBooleanExtra("boarding?", false)) {
        getWindow().setSoftInputMode(4);
      }
      return;
      if (a != null)
      {
        k = a.getId();
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
    if ((paramApiRequest instanceof ap)) {
      cr.a(paramYelpException.getMessage(this), 0);
    }
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1024))
    {
      cr.a(paramYelpException.getMessage(this), 0);
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
    if ((paramAdapterView != null) && ((paramAdapterView instanceof Comment)))
    {
      paramAdapterView = ((Comment)paramAdapterView).getUser();
      if (TextUtils.equals(a.getUserId(), paramAdapterView.getId())) {
        startActivity(ActivityUserProfile.a(this, a.getUser()));
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */