package com.yelp.android.ui.activities.talk;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentTabHost;
import android.support.v4.app.l;
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
import com.yelp.android.appdata.LocationService.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dr;
import com.yelp.android.appdata.webrequests.dr.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.YelpTabActivity;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.k;
import java.io.IOException;
import java.util.List;

public class ActivityTalk
  extends YelpTabActivity
  implements TabHost.OnTabChangeListener, b.e
{
  private Context a;
  private SharedPreferences b;
  private dr c;
  private final LocationService.a d = new LocationService.a()
  {
    public void a(android.location.Location paramAnonymousLocation, boolean paramAnonymousBoolean)
    {
      if (!paramAnonymousBoolean) {}
      for (;;)
      {
        return;
        Geocoder localGeocoder = new Geocoder(ActivityTalk.a(ActivityTalk.this), agetResourcesgetConfigurationlocale);
        try
        {
          paramAnonymousLocation = localGeocoder.getFromLocation(paramAnonymousLocation.getLatitude(), paramAnonymousLocation.getLongitude(), 1);
          if ((paramAnonymousLocation != null) && (paramAnonymousLocation.size() > 0))
          {
            paramAnonymousLocation = (Address)paramAnonymousLocation.get(0);
            if (ActivityTalk.b(ActivityTalk.this) != null)
            {
              ActivityTalk.b(ActivityTalk.this).a(true);
              ActivityTalk.b(ActivityTalk.this).a(null);
            }
            ActivityTalk.a(ActivityTalk.this, new dr(paramAnonymousLocation.getLatitude(), paramAnonymousLocation.getLongitude(), ActivityTalk.c(ActivityTalk.this)));
            ActivityTalk.b(ActivityTalk.this).f(new Void[0]);
            return;
          }
        }
        catch (IOException paramAnonymousLocation) {}
      }
    }
    
    public boolean a()
    {
      onProvidersRequired(ActivityTalk.this, false, 0);
      return false;
    }
  };
  private final k.b<dr.a> e = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dr.a paramAnonymousa)
    {
      if ((b) && (a != null)) {
        ActivityTalk.a(ActivityTalk.this, a.h());
      }
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  
  private void a(String paramString)
  {
    b.edit().putString(getString(2131166981), paramString).commit();
  }
  
  private boolean d()
  {
    String str = getString(2131166980);
    boolean bool = b.getBoolean(str, false);
    if (!bool) {
      b.edit().putBoolean(str, true).commit();
    }
    return bool;
  }
  
  private void e()
  {
    startActivityForResult(ChangeSettings.a(this, 2130903509, getString(2131166551)), 1061);
  }
  
  public void a(boolean paramBoolean) {}
  
  public boolean a()
  {
    return b.getString(getString(2131166981), null) != null;
  }
  
  public void b()
  {
    if (!a()) {
      AppData.b().r().a(LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE, d);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Talk;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1048)
    {
      if (getHelper().t()) {
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
    b = PreferenceManager.getDefaultSharedPreferences(a);
    paramBundle = c();
    Button localButton = (Button)getLayoutInflater().inflate(2130903569, paramBundle.getTabWidget(), false);
    localButton.setText(2131165488);
    paramBundle.a(paramBundle.newTabSpec("all_talk").setIndicator(localButton), AllTalkTab.class, null);
    localButton = (Button)getLayoutInflater().inflate(2130903569, paramBundle.getTabWidget(), false);
    localButton.setText(2131166201);
    paramBundle.a(paramBundle.newTabSpec("my_talk").setIndicator(localButton), MyTalkTab.class, null);
    c().setOnTabChangedListener(this);
    if ((!d()) && (getHelper().t())) {
      showDialog(1);
    }
    if (!a()) {
      AppData.b().r().a(LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE, d);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    String str = b.getString(getString(2131166981), null);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setTitle(2131166551);
    if (str == null) {}
    for (str = getString(2131166654);; str = getString(2131166645, new Object[] { str })) {
      localBuilder.setMessage(str).setPositiveButton(2131166290, null).setNegativeButton(2131166217, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityTalk.d(ActivityTalk.this);
        }
      }).create();
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (c != null)
    {
      c.a(null);
      c.a(true);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691023) {
      ((k)getSupportFragmentManager().a(c().getCurrentTabTag())).p_();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onTabChanged(String paramString)
  {
    if ((paramString.equals("my_talk")) && (!getHelper().t()))
    {
      c().setCurrentTabByTag("my_talk");
      startActivityForResult(ActivityLogin.a(this, 2131165714, 2131166648), 1048);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.ActivityTalk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */