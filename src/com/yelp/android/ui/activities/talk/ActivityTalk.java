package com.yelp.android.ui.activities.talk;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTabHost;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.appdata.aa;
import com.yelp.android.appdata.webrequests.eq;
import com.yelp.android.appdata.webrequests.er;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.YelpTabActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.p;

public class ActivityTalk
  extends YelpTabActivity
  implements TabHost.OnTabChangeListener, o
{
  private Context a;
  private String b;
  private SharedPreferences c;
  private String d;
  private eq e;
  private final aa f = new a(this);
  private final m<er> g = new b(this);
  
  private boolean a()
  {
    String str = getString(2131165977);
    boolean bool = c.getBoolean(str, false);
    if (!bool) {
      c.edit().putBoolean(str, true).commit();
    }
    return bool;
  }
  
  private void d()
  {
    c.edit().putString(d, b).commit();
  }
  
  private void e()
  {
    startActivityForResult(ChangeSettings.a(this, 2130903400, getString(2131166670)), 1052);
  }
  
  public void a(boolean paramBoolean) {}
  
  public ViewIri getIri()
  {
    return ViewIri.Talk;
  }
  
  public void k_()
  {
    AppData.b().n().a(LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE, f);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1043)
    {
      if (paramInt2 == -1) {
        c().setCurrentTabByTag("my_talk");
      }
    }
    else {
      return;
    }
    c().setCurrentTabByTag("all_talk");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getApplicationContext();
    c = PreferenceManager.getDefaultSharedPreferences(a);
    d = a.getString(2131165978);
    paramBundle = c();
    Button localButton = (Button)getLayoutInflater().inflate(2130903443, paramBundle.getTabWidget(), false);
    localButton.setText(2131165362);
    paramBundle.addTab(paramBundle.newTabSpec("all_talk").setIndicator(localButton), AllTalkTab.class, null);
    localButton = (Button)getLayoutInflater().inflate(2130903443, paramBundle.getTabWidget(), false);
    localButton.setText(2131166149);
    paramBundle.addTab(paramBundle.newTabSpec("my_talk").setIndicator(localButton), MyTalkTab.class, null);
    c().setOnTabChangedListener(this);
    if ((!a()) && (getHelper().t())) {
      showDialog(1);
    }
    while (c.getBoolean(a.getString(2131165979), true)) {
      return;
    }
    AppData.b().n().a(LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE, f);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    String str = c.getString(d, null);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setTitle(2131166670);
    if (str == null) {}
    for (str = getString(2131166678);; str = getString(2131166668, new Object[] { str })) {
      return localBuilder.setMessage(str).setPositiveButton(2131166237, null).setNegativeButton(2131166167, new c(this)).create();
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (e != null)
    {
      e.setCallback(null);
      e.cancel(true);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494150) {
      ((p)getSupportFragmentManager().findFragmentByTag(c().getCurrentTabTag())).a_();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onTabChanged(String paramString)
  {
    if ((paramString.equals("my_talk")) && (!getHelper().t()))
    {
      c().setCurrentTabByTag("my_talk");
      startActivityForResult(ActivityLogin.a(this, 2131166672), 1043);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */