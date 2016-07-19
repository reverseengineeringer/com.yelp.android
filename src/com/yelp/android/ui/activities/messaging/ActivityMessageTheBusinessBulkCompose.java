package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.messaging.j;
import com.yelp.android.appdata.webrequests.messaging.j.a;
import com.yelp.android.appdata.webrequests.messaging.k;
import com.yelp.android.appdata.webrequests.messaging.k.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ActivityMessageTheBusinessBulkCompose
  extends YelpActivity
{
  private YelpBusiness a;
  private Set<String> b = new HashSet();
  private k c;
  private j d;
  private boolean e = true;
  private final ApiRequest.b<k.a> f = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, k.a paramAnonymousa)
    {
      disableLoading();
      ((TextView)findViewById(2131690366)).setHint(a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
    }
  };
  private final ApiRequest.b<j.a> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, j.a paramAnonymousa)
    {
      disableLoading();
      paramAnonymousApiRequest = new Intent();
      paramAnonymousApiRequest.putExtra("confirmation_main", a);
      paramAnonymousApiRequest.putExtra("confirmation_sub", b);
      setResult(-1, paramAnonymousApiRequest);
      finish();
      paramAnonymousApiRequest = Collections.singletonMap("source", "unclaimed_widget");
      AppData.a(EventIri.BusinessMessageTheBusinessSend, paramAnonymousApiRequest);
      AppData.a(EventIri.BusinessMessageTheBusinessMultibizSend, paramAnonymousApiRequest);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      as.a(paramAnonymousYelpException.getMessageResource(), 0);
      disableLoading();
    }
  };
  private TextWatcher h = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (ActivityMessageTheBusinessBulkCompose.a(ActivityMessageTheBusinessBulkCompose.this))
      {
        ActivityMessageTheBusinessBulkCompose.a(ActivityMessageTheBusinessBulkCompose.this, false);
        AppData.a(EventIri.BusinessMessageTheBusinessWrite, Collections.singletonMap("source", "unclaimed_widget"));
      }
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ArrayList<String> paramArrayList)
  {
    paramContext = new Intent(paramContext, ActivityMessageTheBusinessBulkCompose.class);
    paramContext.putExtra("business", paramYelpBusiness);
    paramContext.putStringArrayListExtra("recipient_ids", paramArrayList);
    return paramContext;
  }
  
  private void a()
  {
    if ((c != null) && (c.u())) {
      return;
    }
    enableLoading();
    c = new k(f, a.aD());
    c.f(new Void[0]);
  }
  
  private boolean b()
  {
    if (StringUtils.d(((EditText)findViewById(2131690366)).getText().toString()))
    {
      AlertDialogFragment.a(null, getString(2131165982)).show(getSupportFragmentManager(), null);
      return false;
    }
    return true;
  }
  
  private void c()
  {
    if ((d != null) && (d.u())) {
      return;
    }
    enableLoading();
    String str = ((EditText)findViewById(2131690366)).getText().toString();
    d = new j(b, str, a.aD(), "business_id", g);
    d.f(new Void[0]);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1048)) {
      c();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((YelpBusiness)getIntent().getParcelableExtra("business"));
    b.addAll(getIntent().getStringArrayListExtra("recipient_ids"));
    a();
    setContentView(2130903285);
    if (paramBundle != null) {
      e = paramBundle.getBoolean("is_first_message_change");
    }
    setTitle(2131165691);
    paramBundle = (TextView)findViewById(2131690361);
    paramBundle.setVisibility(0);
    paramBundle.setText(StringUtils.a(this, 2131230756, b.size(), new Object[0]));
    ((EditText)findViewById(2131690366)).addTextChangedListener(h);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755044, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691015: 
      if ((b()) && (!AppData.b().q().b())) {
        startActivityForResult(ActivityLogin.a(this, 2131166101), 1048);
      }
      for (;;)
      {
        AppData.a(EventIri.BusinessMessageTheBusinessTapSend, Collections.singletonMap("source", "unclaimed_widget"));
        return true;
        if (b()) {
          c();
        }
      }
    }
    finish();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("info_request", c);
    freezeRequest("send_request", d);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((k)thawRequest("info_request", c, f));
    d = ((j)thawRequest("send_request", d, g));
    if (((c != null) && (c.u())) || ((d != null) && (d.u()))) {
      enableLoading();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("is_first_message_change", e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulkCompose
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */