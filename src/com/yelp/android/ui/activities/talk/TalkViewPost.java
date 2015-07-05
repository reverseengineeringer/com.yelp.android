package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.aw.f;
import com.yelp.android.aw.g;
import com.yelp.android.aw.i;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.Date;

public class TalkViewPost
  extends YelpListActivity
  implements v
{
  private q a;
  private q b;
  private TalkTopic c;
  private TextView d;
  private View e;
  private boolean f = false;
  private View.OnClickListener g = new ae(this);
  private m<com.yelp.android.aw.h> h = new af(this);
  
  public static Intent a(Context paramContext, TalkTopic paramTalkTopic)
  {
    paramContext = new Intent(paramContext, TalkViewPost.class);
    paramContext.putExtra("extra.topic", paramTalkTopic);
    return paramContext;
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    paramInt = paramTextView.getLayout().getLineEnd(paramInt - 1);
    paramTextView.setText(Html.fromHtml(paramTextView.getText().subSequence(0, paramInt - 3) + getString(2131165752)));
  }
  
  private void a(TextView paramTextView, Button paramButton)
  {
    ac localac = new ac(this, paramTextView, paramButton);
    ad localad = new ad(this, paramButton, paramTextView);
    paramTextView.getViewTreeObserver().addOnGlobalLayoutListener(localac);
    paramButton.setOnClickListener(localad);
  }
  
  private void f()
  {
    String str3 = String.valueOf(d.getText());
    if (TextUtils.isEmpty(str3)) {
      return;
    }
    b.b();
    a.b();
    String str1 = a.f();
    if (b.g()) {
      str1 = b.f();
    }
    String str2 = str1;
    if (str1 == null) {
      str2 = c.getId();
    }
    a(str3, str2, h).execute(new Void[0]);
    if (b.g()) {
      b.d().a(true);
    }
    for (;;)
    {
      a(false);
      cr.b(d);
      return;
      a.d().a(true);
    }
  }
  
  private void g()
  {
    Object localObject2 = getLayoutInflater().inflate(c(), q(), false);
    q().addHeaderView((View)localObject2, null, true);
    Object localObject1 = (ViewStub)findViewById(2131493312);
    ((ViewStub)localObject1).setLayoutResource(c());
    Object localObject3 = ((ViewStub)localObject1).inflate();
    localObject1 = new View[2];
    localObject1[0] = localObject3;
    localObject1[1] = localObject2;
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      localObject2 = localObject1[i];
      ((View)localObject2).setOnClickListener(g);
      a((View)localObject2);
      localObject3 = (TextView)((View)localObject2).findViewById(2131493819);
      ((TextView)localObject3).setText(Html.fromHtml(c.getTitle()));
      ((TextView)localObject3).setMovementMethod(LinkMovementMethod.getInstance());
      localObject3 = (Button)((View)localObject2).findViewById(2131493821);
      localObject2 = (TextView)((View)localObject2).findViewById(2131493777);
      ((TextView)localObject2).setText(Html.fromHtml(c.getText()));
      ((TextView)localObject2).setMovementMethod(LinkMovementMethod.getInstance());
      a((TextView)localObject2, (Button)localObject3);
      i += 1;
    }
  }
  
  private void h()
  {
    if (getHelper().s())
    {
      f();
      return;
    }
    startActivityForResult(ActivityLogin.a(this, 2131166674), 1043);
  }
  
  private void j()
  {
    View localView = e;
    if ((d.isEnabled()) && (!TextUtils.isEmpty(d.getText()))) {}
    for (boolean bool = true;; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
  
  public f a(String paramString, int paramInt, m<com.yelp.android.aw.h> paramm)
  {
    return new g(c.getId(), paramString, paramInt, paramm);
  }
  
  protected f a(String paramString1, String paramString2, m<com.yelp.android.aw.h> paramm)
  {
    return new i(c.getId(), paramString1, paramString2, paramm);
  }
  
  protected final void a(int paramInt)
  {
    if (paramInt > 50)
    {
      a.a(b);
      a.a(25);
      b.a(-5);
      return;
    }
    a.a(paramInt);
    b.c();
  }
  
  protected void a(View paramView)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131493730);
    if (c.isUserElite()) {
      localTextView.setText(DateFormat.format(getString(2131165744), new Date()));
    }
    for (;;)
    {
      ((WebImageView)paramView.findViewById(2131493446)).setImageUrl(c.getUserPhotoUrl(), 2130837659);
      ((TextView)paramView.findViewById(2131493907)).setText(c.getUserName());
      ((TextView)paramView.findViewById(2131493908)).setText(Integer.toString(c.getUserFriendCount()));
      ((TextView)paramView.findViewById(2131493909)).setText(Integer.toString(c.getUserReviewCount()));
      ((TextView)paramView.findViewById(2131493910)).setText(Integer.toString(c.getUserMediaCount()));
      ((TextView)paramView.findViewById(2131493611)).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, c.getTimeCreated()));
      return;
      localTextView.setVisibility(8);
    }
  }
  
  public void a(YelpException paramYelpException)
  {
    disableLoading();
    AlertDialogFragment.a(getString(2131166667), paramYelpException.getMessage(this), getString(2131166237)).a(getSupportFragmentManager());
  }
  
  protected void a(String paramString)
  {
    a(c.getReplyCount());
  }
  
  public void a(boolean paramBoolean)
  {
    d.setEnabled(paramBoolean);
    j();
  }
  
  public void a_()
  {
    a.clear();
    b.clear();
    a(c.getId());
  }
  
  protected int c()
  {
    return 2130903378;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TalkViewPost;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1043) && (paramInt2 == -1)) {
      f();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903119);
    c = ((TalkTopic)getIntent().getParcelableExtra("extra.topic"));
    a = new q(this, this);
    b = new q(this, this);
    paramBundle = new bs();
    paramBundle.a(1, a);
    paramBundle.a(2, a.d());
    paramBundle.a(3, b);
    paramBundle.a(4, b.d());
    b.a(paramBundle.a(3));
    ScrollToLoadListView localScrollToLoadListView = q();
    localScrollToLoadListView.setAdapter(paramBundle);
    localScrollToLoadListView.f();
    d = ((TextView)findViewById(2131493866));
    d.addTextChangedListener(new y(this));
    d.setOnFocusChangeListener(new z(this));
    d.setOnEditorActionListener(new aa(this));
    e = findViewById(2131493867);
    e.setOnClickListener(new ab(this));
    a(false);
    g();
    a(c.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */