package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.DateFormat;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bv.c.a;
import com.yelp.android.bv.c.b;
import com.yelp.android.bv.c.c;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;

public class TalkViewPost
  extends YelpListActivity
  implements c
{
  private b a;
  private b b;
  private TalkTopic c;
  private TextView d;
  private View e;
  private boolean f = false;
  private View.OnClickListener g = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      startActivity(ActivityUserProfile.a(TalkViewPost.this, TalkViewPost.d(TalkViewPost.this).i()));
    }
  };
  private ApiRequest.b<c.b> h = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, c.b paramAnonymousb)
    {
      if (TalkViewPost.f(TalkViewPost.this).g())
      {
        TalkViewPost.f(TalkViewPost.this).a(paramAnonymousb);
        TalkViewPost.f(TalkViewPost.this).d().a(false);
      }
      for (;;)
      {
        TalkViewPost.g(TalkViewPost.this).setText(null);
        TalkViewPost.g(TalkViewPost.this).clearFocus();
        a(true);
        ar.c(TalkViewPost.g(TalkViewPost.this));
        return;
        TalkViewPost.e(TalkViewPost.this).a(paramAnonymousb);
        TalkViewPost.e(TalkViewPost.this).d().a(false);
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
      a(true);
      TalkViewPost.e(TalkViewPost.this).d().a(false);
      TalkViewPost.f(TalkViewPost.this).d().a(false);
    }
  };
  
  public static Intent a(Context paramContext, TalkTopic paramTalkTopic)
  {
    paramContext = new Intent(paramContext, TalkViewPost.class);
    paramContext.putExtra("topic", paramTalkTopic);
    return paramContext;
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    paramInt = paramTextView.getLayout().getLineEnd(paramInt - 1);
    paramTextView.setText(Html.fromHtml(paramTextView.getText().subSequence(0, paramInt - 3) + getString(2131166945)));
  }
  
  private void a(final TextView paramTextView, final Button paramButton)
  {
    ViewTreeObserver.OnGlobalLayoutListener local5 = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        if (TalkViewPost.c(TalkViewPost.this)) {}
        int i;
        do
        {
          return;
          i = getResources().getInteger(2131492896);
        } while (paramTextView.getLineCount() <= i);
        TalkViewPost.a(TalkViewPost.this, paramTextView, i);
        paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
        paramButton.setVisibility(0);
      }
    };
    View.OnClickListener local6 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TalkViewPost.a(TalkViewPost.this, true);
        paramButton.setVisibility(8);
        paramTextView.setText(Html.fromHtml(TalkViewPost.d(TalkViewPost.this).m()));
        paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
      }
    };
    paramTextView.getViewTreeObserver().addOnGlobalLayoutListener(local5);
    paramButton.setOnClickListener(local6);
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
      str2 = c.n();
    }
    a(str3, str2, h).f(new Void[0]);
    if (b.g()) {
      b.d().a(true);
    }
    for (;;)
    {
      a(false);
      as.b(d);
      return;
      a.d().a(true);
    }
  }
  
  private void g()
  {
    Object localObject2 = getLayoutInflater().inflate(b(), r(), false);
    r().addHeaderView((View)localObject2, null, true);
    Object localObject1 = (ViewStub)findViewById(2131689968);
    ((ViewStub)localObject1).setLayoutResource(b());
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
      localObject3 = (TextView)((View)localObject2).findViewById(2131690655);
      ((TextView)localObject3).setText(Html.fromHtml(c.o()));
      ((TextView)localObject3).setMovementMethod(LinkMovementMethod.getInstance());
      localObject3 = (Button)((View)localObject2).findViewById(2131690657);
      localObject2 = (TextView)((View)localObject2).findViewById(2131690606);
      ((TextView)localObject2).setText(Html.fromHtml(c.m()));
      ((TextView)localObject2).setMovementMethod(LinkMovementMethod.getInstance());
      a((TextView)localObject2, (Button)localObject3);
      i += 1;
    }
  }
  
  private void i()
  {
    if (getHelper().t())
    {
      f();
      return;
    }
    startActivityForResult(ActivityLogin.a(this, 2131165704, 2131166650), 1048);
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
  
  public com.yelp.android.bv.c a(String paramString, int paramInt, ApiRequest.b<c.b> paramb)
  {
    return new c.a(c.n(), paramString, paramInt, paramb);
  }
  
  protected com.yelp.android.bv.c a(String paramString1, String paramString2, ApiRequest.b<c.b> paramb)
  {
    return new c.c(c.n(), paramString1, paramString2, paramb);
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
    TextView localTextView = (TextView)paramView.findViewById(2131690556);
    if (c.a()) {
      localTextView.setText(DateFormat.format(getString(2131165825), User.j()));
    }
    for (;;)
    {
      ((WebImageView)paramView.findViewById(2131690074)).setImageUrl(c.j(), 2130837702);
      ((TextView)paramView.findViewById(2131690076)).setText(c.k());
      ((TextView)paramView.findViewById(2131690064)).setText(Integer.toString(c.d()));
      ((TextView)paramView.findViewById(2131690746)).setText(Integer.toString(c.g()));
      ((TextView)paramView.findViewById(2131690747)).setText(Integer.toString(c.b()));
      ((TextView)paramView.findViewById(2131690336)).setText(StringUtils.a(this, StringUtils.Format.ABBREVIATED, c.q()));
      return;
      localTextView.setVisibility(8);
    }
  }
  
  public void a(YelpException paramYelpException)
  {
    disableLoading();
    AlertDialogFragment.a(getString(2131166644), paramYelpException.getMessage(this), getString(2131166290)).a(getSupportFragmentManager());
  }
  
  protected void a(String paramString)
  {
    a(c.h());
  }
  
  public void a(boolean paramBoolean)
  {
    d.setEnabled(paramBoolean);
    j();
  }
  
  protected int b()
  {
    return 2130903479;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TalkViewPost;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1048) && (paramInt2 == -1)) {
      f();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903128);
    c = ((TalkTopic)getIntent().getParcelableExtra("topic"));
    a = new b(this, this);
    b = new b(this, this);
    paramBundle = new aj();
    paramBundle.a(1, a);
    paramBundle.a(2, a.d());
    paramBundle.a(3, b);
    paramBundle.a(4, b.d());
    b.a(paramBundle.a(3));
    ScrollToLoadListView localScrollToLoadListView = r();
    localScrollToLoadListView.setAdapter(paramBundle);
    localScrollToLoadListView.f();
    d = ((TextView)findViewById(2131690701));
    d.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        TalkViewPost.a(TalkViewPost.this);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    d.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        TalkViewPost.a(TalkViewPost.this);
      }
    });
    d.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 0) && (paramAnonymousKeyEvent.getAction() == 0))
        {
          TalkViewPost.b(TalkViewPost.this);
          return true;
        }
        return false;
      }
    });
    e = findViewById(2131690702);
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TalkViewPost.b(TalkViewPost.this);
      }
    });
    a(false);
    g();
    a(c.n());
  }
  
  public void p_()
  {
    a.clear();
    b.clear();
    a(c.n());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */