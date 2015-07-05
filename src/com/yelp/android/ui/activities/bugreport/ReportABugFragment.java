package com.yelp.android.ui.activities.bugreport;

import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
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
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.eh;
import com.yelp.android.av.i;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

public class ReportABugFragment
  extends YelpFragment
{
  private EditText a;
  private EditText b;
  private View c;
  private eh d;
  private i e = new a(this);
  private TextWatcher g = new b(this);
  private DialogInterface.OnClickListener h = new c(this);
  
  public static ReportABugFragment a()
  {
    ReportABugFragment localReportABugFragment = new ReportABugFragment();
    localReportABugFragment.setArguments(new Bundle());
    return localReportABugFragment;
  }
  
  private void b()
  {
    i_();
    d = new eh((YelpActivity)getActivity(), b.getText().toString(), c(), e);
    d.execute(new Void[0]);
    AppData.a(EventIri.BugReportSent);
    w();
  }
  
  private String c()
  {
    String str2 = a.getText().toString();
    String str1 = str2;
    if (AppData.b().m() != null)
    {
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = AppData.b().m().m();
      }
    }
    return str1;
  }
  
  public com.yelp.android.analytics.iris.b getIri()
  {
    return ViewIri.BugReport;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    paramBundle = (AlertDialogFragment)getActivity().getSupportFragmentManager().findFragmentByTag("bug_reported_dialog");
    if (paramBundle != null) {
      paramBundle.a(h);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755033, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903406, (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle));
    b = ((EditText)paramLayoutInflater.findViewById(2131494009));
    b.addTextChangedListener(g);
    a = ((EditText)paramLayoutInflater.findViewById(2131494008));
    a.addTextChangedListener(g);
    c = paramLayoutInflater.findViewById(2131494007);
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
    if ((b != null) && (!TextUtils.isEmpty(b.getText())) && (!TextUtils.isEmpty(c())) && ((d == null) || (!d.isFetching()))) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.findItem(2131494155).setEnabled(bool);
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((eh)a("report_a_bug_request", null, e));
    if ((d != null) && (d.isFetching())) {
      i_();
    }
    dc localdc = AppData.b().m();
    if ((localdc != null) && (localdc.c()))
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