package com.yelp.android.ui.activities.bugreport;

import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dl;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

public class ReportABugFragment
  extends YelpFragment
{
  private EditText a;
  private EditText b;
  private View c;
  private dl d;
  private c.a e = new ReportABugFragment.1(this);
  private TextWatcher f = new ReportABugFragment.2(this);
  private DialogInterface.OnClickListener g = new ReportABugFragment.3(this);
  
  public static ReportABugFragment a()
  {
    ReportABugFragment localReportABugFragment = new ReportABugFragment();
    localReportABugFragment.setArguments(new Bundle());
    return localReportABugFragment;
  }
  
  private void b()
  {
    H_();
    d = new dl((YelpActivity)getActivity(), b.getText().toString(), c(), e);
    d.f(new Void[0]);
    AppData.a(EventIri.BugReportSent);
    y();
  }
  
  private String c()
  {
    String str2 = a.getText().toString();
    String str1 = str2;
    if (AppData.b().q() != null)
    {
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = AppData.b().q().i();
      }
    }
    return str1;
  }
  
  public a getIri()
  {
    return ViewIri.BugReport;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    paramBundle = (AlertDialogFragment)getActivity().getSupportFragmentManager().a("bug_reported_dialog");
    if (paramBundle != null) {
      paramBundle.a(g);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755037, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903515, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    b = ((EditText)paramLayoutInflater.findViewById(2131690877));
    b.addTextChangedListener(f);
    a = ((EditText)paramLayoutInflater.findViewById(2131689746));
    a.addTextChangedListener(f);
    c = paramLayoutInflater.findViewById(2131690876);
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    b();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a("report_a_bug_request", d);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if ((b != null) && (!TextUtils.isEmpty(b.getText())) && (!TextUtils.isEmpty(c())) && ((d == null) || (!d.u()))) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.findItem(2131691028).setEnabled(bool);
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((dl)a("report_a_bug_request", null, e));
    if ((d != null) && (d.u())) {
      H_();
    }
    co localco = AppData.b().q();
    if ((localco != null) && (localco.b()))
    {
      a.setVisibility(8);
      c.setVisibility(8);
      return;
    }
    a.setVisibility(0);
    c.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bugreport.ReportABugFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */