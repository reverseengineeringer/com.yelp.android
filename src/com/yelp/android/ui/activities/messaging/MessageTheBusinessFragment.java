package com.yelp.android.ui.activities.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.messaging.j;
import com.yelp.android.ay.i;
import com.yelp.android.ay.t;
import com.yelp.android.database.q;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;

public class MessageTheBusinessFragment
  extends YelpFragment
{
  private YelpBusiness a;
  private TextView b;
  private boolean c;
  private String d;
  private EditText e;
  private bn g;
  private MessageTheBusinessFragment.RequestFragment h;
  private i i;
  private boolean j = false;
  
  public static MessageTheBusinessFragment a(YelpBusiness paramYelpBusiness)
  {
    MessageTheBusinessFragment localMessageTheBusinessFragment = new MessageTheBusinessFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("business_id", paramYelpBusiness);
    localMessageTheBusinessFragment.setArguments(localBundle);
    return localMessageTheBusinessFragment;
  }
  
  private void a(j paramj)
  {
    d = a;
    c = b;
    g.dismiss();
    h();
  }
  
  private void a(String paramString)
  {
    g.dismiss();
    m();
    e.setText(null);
    Intent localIntent = new Intent();
    localIntent.putExtra("confirmation_message", paramString);
    getActivity().setResult(-1, localIntent);
    getActivity().finish();
  }
  
  private boolean a()
  {
    return !TextUtils.isEmpty(StringUtils.a(e.getText().toString()));
  }
  
  private void b()
  {
    if (!a())
    {
      AlertDialogFragment.a(null, getString(2131165909)).show(getFragmentManager(), null);
      return;
    }
    if (!AppData.b().m().c())
    {
      c();
      return;
    }
    f();
  }
  
  private void b(YelpException paramYelpException)
  {
    g.dismiss();
    if (ApiException.isUserBlocked(paramYelpException))
    {
      j = true;
      w();
    }
    cr.a(paramYelpException.getMessage(getActivity()), 1);
  }
  
  private void c()
  {
    startActivityForResult(ActivityLogin.a(getActivity(), 2131166042), 1043);
  }
  
  private void e()
  {
    MessageTheBusinessFragment.RequestFragment.a(h, a.getId());
    i();
  }
  
  private void f()
  {
    MessageTheBusinessFragment.RequestFragment.a(h, a.getId(), e.getText().toString());
    i();
    AppData.a(EventIri.BusinessMessageTheBusinessSend);
  }
  
  private void g()
  {
    g.dismiss();
  }
  
  private void h()
  {
    TextView localTextView;
    if (!TextUtils.isEmpty(d))
    {
      b.setVisibility(0);
      b.setText(Html.fromHtml(d));
      localTextView = b;
      if (!c) {
        break label56;
      }
    }
    label56:
    for (int k = 2130837948;; k = 2130838235)
    {
      localTextView.setCompoundDrawablesWithIntrinsicBounds(k, 0, 0, 0);
      return;
    }
  }
  
  private void i()
  {
    g = new bn(getActivity());
    g.setProgressStyle(0);
    g.setMessage(getString(2131166015));
    g.setCancelable(false);
    g.show();
  }
  
  private void k()
  {
    i.a(a, new y(this));
  }
  
  private void l()
  {
    t localt = new t(a.getId(), e.getText().toString());
    i.a(localt, new z(this));
  }
  
  private void m()
  {
    i.a(a);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1043)) {
      f();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = AppData.b().i().j();
    a = ((YelpBusiness)getArguments().getParcelable("business_id"));
    h = ((MessageTheBusinessFragment.RequestFragment)getFragmentManager().findFragmentByTag("request_fragment"));
    if (h == null)
    {
      h = new MessageTheBusinessFragment.RequestFragment();
      getFragmentManager().beginTransaction().add(h, "request_fragment").commit();
    }
    h.setTargetFragment(this, 0);
    if (paramBundle == null)
    {
      k();
      e();
    }
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755029, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903243, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    e = ((EditText)paramLayoutInflater.findViewById(2131493624));
    b = ((TextView)paramLayoutInflater.findViewById(2131493623));
    if (paramBundle != null)
    {
      j = paramBundle.getBoolean("saved_blocked_by_business");
      d = paramBundle.getString("response_time_text");
      c = paramBundle.getBoolean("show_warning_icon", false);
      if (MessageTheBusinessFragment.RequestFragment.a(h)) {
        i();
      }
      h();
    }
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    b();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (a())
    {
      l();
      return;
    }
    m();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131494155);
    if (!j) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setEnabled(bool);
      return;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("saved_blocked_by_business", j);
    paramBundle.putString("response_time_text", d);
    paramBundle.putBoolean("show_warning_icon", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.MessageTheBusinessFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */