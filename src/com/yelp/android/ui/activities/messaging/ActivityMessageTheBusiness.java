package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.messaging.k.a;
import com.yelp.android.appdata.webrequests.messaging.l;
import com.yelp.android.appdata.webrequests.messaging.l.a;
import com.yelp.android.cc.c;
import com.yelp.android.database.g;
import com.yelp.android.database.h.c;
import com.yelp.android.serializable.MessageTheBusiness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;

public class ActivityMessageTheBusiness
  extends YelpActivity
{
  private c a;
  private YelpBusiness b;
  private boolean c;
  private String d;
  private TextView e;
  private boolean f;
  private String g;
  private EditText h;
  private com.yelp.android.appdata.webrequests.messaging.k i;
  private l j;
  private boolean k = false;
  private boolean l = true;
  private TextWatcher m = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (ActivityMessageTheBusiness.a(ActivityMessageTheBusiness.this))
      {
        ActivityMessageTheBusiness.a(ActivityMessageTheBusiness.this, false);
        AppData.a(EventIri.BusinessMessageTheBusinessWrite);
        if (ActivityMessageTheBusiness.b(ActivityMessageTheBusiness.this)) {
          AppData.a(EventIri.SearchRequestAQuoteWrite);
        }
      }
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private final ApiRequest.b<l.a> n = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, l.a paramAnonymousa)
    {
      disableLoading();
      paramAnonymousApiRequest = new Intent();
      paramAnonymousApiRequest.putExtra("confirmation_main", getResources().getString(2131166879));
      paramAnonymousApiRequest.putExtra("confirmation_sub", a);
      paramAnonymousApiRequest.putExtra("original_message_id", b);
      setResult(-1, paramAnonymousApiRequest);
      if ((Features.request_a_quote_multibiz.isEnabled()) && (ActivityMessageTheBusiness.c(ActivityMessageTheBusiness.this).aK().f().equals(MessageTheBusinessType.REQUEST_A_QUOTE.getTypeName())))
      {
        startActivityForResult(ActivityMessageTheBusinessBulk.a(ActivityMessageTheBusiness.this, ActivityMessageTheBusiness.c(ActivityMessageTheBusiness.this), paramAnonymousApiRequest), 1035);
        return;
      }
      if (ActivityMessageTheBusiness.b(ActivityMessageTheBusiness.this)) {
        startActivity(ActivityBusinessPage.a(ActivityMessageTheBusiness.this, ActivityMessageTheBusiness.c(ActivityMessageTheBusiness.this), paramAnonymousApiRequest));
      }
      finish();
      a();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
      if (ApiException.isUserBlocked(paramAnonymousYelpException))
      {
        ActivityMessageTheBusiness.b(ActivityMessageTheBusiness.this, true);
        supportInvalidateOptionsMenu();
      }
      as.a(paramAnonymousYelpException.getMessage(ActivityMessageTheBusiness.this), 1);
    }
  };
  private final ApiRequest.b<k.a> o = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, k.a paramAnonymousa)
    {
      ActivityMessageTheBusiness.a(ActivityMessageTheBusiness.this, a);
      ActivityMessageTheBusiness.b(ActivityMessageTheBusiness.this, b);
      ActivityMessageTheBusiness.c(ActivityMessageTheBusiness.this, c);
      ActivityMessageTheBusiness.d(ActivityMessageTheBusiness.this);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  private a p = new a()
  {
    public void a(Object paramAnonymousObject)
    {
      paramAnonymousObject = ((com.yelp.android.cc.k)paramAnonymousObject).b();
      StringUtils.a(ActivityMessageTheBusiness.e(ActivityMessageTheBusiness.this), ActivityMessageTheBusiness.f(ActivityMessageTheBusiness.this), (String)paramAnonymousObject);
    }
  };
  private a q = new a()
  {
    public void a(Object paramAnonymousObject)
    {
      if (ActivityMessageTheBusiness.g(ActivityMessageTheBusiness.this) == null) {
        as.a(2131166877, 0);
      }
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityMessageTheBusiness.class);
    paramContext.putExtra("business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return a(paramContext, paramYelpBusiness).putExtra("is_from_search_action", true);
  }
  
  private boolean b()
  {
    return !StringUtils.d(h.getText().toString());
  }
  
  private void c()
  {
    if (!b())
    {
      AlertDialogFragment.a(null, getString(2131165982)).show(getSupportFragmentManager(), null);
      return;
    }
    if (!AppData.b().q().b())
    {
      d();
      return;
    }
    e();
  }
  
  private void d()
  {
    startActivityForResult(ActivityLogin.a(this, 2131166101), 1048);
  }
  
  private void e()
  {
    if ((j != null) && (j.u())) {}
    do
    {
      return;
      j = new l(b.aD(), h.getText().toString(), n);
      j.f(new Void[0]);
      enableLoading();
      AppData.a(EventIri.BusinessMessageTheBusinessSend);
    } while (!c);
    AppData.a(EventIri.SearchRequestAQuoteSend);
  }
  
  private void f()
  {
    if ((i != null) && (i.u())) {
      return;
    }
    i = new com.yelp.android.appdata.webrequests.messaging.k(o, b.aD());
    i.f(new Void[0]);
  }
  
  private void g()
  {
    if (!TextUtils.isEmpty(d)) {
      h.setHint(d);
    }
    TextView localTextView;
    if (!TextUtils.isEmpty(g))
    {
      e.setVisibility(0);
      e.setText(Html.fromHtml(g));
      localTextView = e;
      if (!f) {
        break label77;
      }
    }
    label77:
    for (int i1 = 2130838111;; i1 = 2130838521)
    {
      localTextView.setCompoundDrawablesWithIntrinsicBounds(i1, 0, 0, 0);
      return;
    }
  }
  
  public void a()
  {
    h.setText("");
    a.a(b);
  }
  
  public void a(a parama)
  {
    a.a(b, parama);
  }
  
  public void a(String paramString, a parama)
  {
    a.a(new com.yelp.android.cc.k(b.aD(), paramString), parama);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessNewMessage;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1048)) {
      e();
    }
    while (paramInt1 != 1035) {
      return;
    }
    setResult(-1, paramIntent);
    if (c) {
      startActivity(ActivityBusinessPage.a(this, b, paramIntent));
    }
    a();
    finish();
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.BusinessMessageTheBusinessLeave);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((YelpBusiness)getIntent().getParcelableExtra("business"));
    c = getIntent().getBooleanExtra("is_from_search_action", false);
    a = AppData.b().i().h();
    setTitle(b.aq());
    setContentView(2130903285);
    h = ((EditText)findViewById(2131690366));
    h.addTextChangedListener(m);
    e = ((TextView)findViewById(2131690365));
    if (paramBundle == null)
    {
      a(p);
      f();
      return;
    }
    k = paramBundle.getBoolean("saved_blocked_by_business");
    d = paramBundle.getString("saved_placeholder_text");
    g = paramBundle.getString("response_time_text");
    f = paramBundle.getBoolean("show_warning_icon", false);
    l = paramBundle.getBoolean("is_first_message_change");
    g();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755033, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      finish();
      AppData.a(EventIri.BusinessMessageTheBusinessLeave);
      return true;
    }
    AppData.a(EventIri.BusinessMessageTheBusinessTapSend);
    if (c) {
      AppData.a(EventIri.SearchRequestAQuoteTapSend);
    }
    c();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("info_request", i);
    if (b())
    {
      a(h.getText().toString(), q);
      return;
    }
    a();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131691028);
    if (!k) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setEnabled(bool);
      return true;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    i = ((com.yelp.android.appdata.webrequests.messaging.k)thawRequest("info_request", i, o));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("saved_blocked_by_business", k);
    paramBundle.putString("response_time_text", g);
    paramBundle.putString("saved_placeholder_text", d);
    paramBundle.putBoolean("show_warning_icon", f);
    paramBundle.putBoolean("is_first_message_change", l);
  }
  
  public static abstract class a
    extends h.c
  {
    public void b() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */