package com.yelp.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.s;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ax.a;
import com.yelp.android.database.q;
import com.yelp.android.debug.Debug;
import com.yelp.android.debug.Debug.ApiEndpoint;
import com.yelp.android.debug.Debug.MockLocation;
import com.yelp.android.debug.h;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.Holiday;
import com.yelp.android.util.PlatformQualifier;
import com.yelp.android.webimageview.ImageLoader;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class ActivityConfig
  extends Activity
{
  private Button a;
  private CheckBox b;
  private CheckBox c;
  private EditText d;
  private Button e;
  private Button f;
  private CheckBox g;
  private Button h;
  private CheckBox i;
  private CheckBox j;
  private Button k;
  private Button l;
  private Button m;
  private Button n;
  private Button o;
  private EditText p;
  private View q;
  private CheckBox r;
  private EditText s;
  
  private void a()
  {
    a = ((Button)findViewById(2131493106));
    b = ((CheckBox)findViewById(2131493101));
    c = ((CheckBox)findViewById(2131493102));
    d = ((EditText)findViewById(2131493127));
    e = ((Button)findViewById(2131493128));
    f = ((Button)findViewById(2131493129));
    g = ((CheckBox)findViewById(2131493103));
    h = ((Button)findViewById(2131493105));
    i = ((CheckBox)findViewById(2131493098));
    j = ((CheckBox)findViewById(2131493099));
    k = ((Button)findViewById(2131493115));
    o = ((Button)findViewById(2131493109));
    l = ((Button)findViewById(2131493114));
    r = ((CheckBox)findViewById(2131493125));
    s = ((EditText)findViewById(2131493126));
    n = ((Button)findViewById(2131493107));
    m = ((Button)findViewById(2131493108));
    r.setOnCheckedChangeListener(new bc(this));
    a.setOnClickListener(new u(this));
    e.setOnClickListener(new v(this));
    f.setOnClickListener(new w(this));
    h.setOnClickListener(new x(this));
    k.setOnClickListener(new y(this));
    o.setOnClickListener(new z(this));
    l.setOnClickListener(new aa(this));
    findViewById(2131493110).setOnClickListener(new ab(this));
    findViewById(2131493111).setOnClickListener(new ac(this));
    findViewById(2131493112).setOnClickListener(new ad(this));
    findViewById(2131493113).setOnClickListener(new af(this));
    findViewById(2131493119).setOnClickListener(new ag(this));
    findViewById(2131493120).setOnClickListener(new ah(this));
    findViewById(2131493104).setOnClickListener(new ai(this));
    findViewById(2131493116).setOnClickListener(new aj(this));
    ((Button)findViewById(2131493130)).setOnClickListener(new ak(this));
    ((Button)findViewById(2131493131)).setOnClickListener(new al(this));
    cp.a((LinearLayout)findViewById(2131493092));
    findViewById(2131493117).setOnClickListener(new am(this));
    p = ((EditText)findViewById(2131493096));
    q = findViewById(2131493097);
    q.setOnClickListener(new an(this));
    CheckBox localCheckBox = (CheckBox)findViewById(2131493121);
    localCheckBox.setChecked(AppData.b().o().c());
    localCheckBox.setOnCheckedChangeListener(new ao(this));
    localCheckBox = (CheckBox)findViewById(2131493122);
    localCheckBox.setChecked(AppData.b().o().b());
    localCheckBox.setOnCheckedChangeListener(new aq(this));
    localCheckBox = (CheckBox)findViewById(2131493123);
    localCheckBox.setChecked(AppData.b().o().d());
    localCheckBox.setOnCheckedChangeListener(new ar(this));
    n.setOnClickListener(new as(this));
    m.setOnClickListener(new at(this));
    findViewById(2131493118).setOnClickListener(new au(this));
    localCheckBox = (CheckBox)findViewById(2131493124);
    localCheckBox.setChecked(AppData.b().o().e());
    localCheckBox.setOnCheckedChangeListener(new av(this));
  }
  
  private void a(boolean paramBoolean)
  {
    int i1 = 10;
    String str = d.getText().toString();
    if ((str != null) && (str.length() > 0)) {
      str = str.trim();
    }
    try
    {
      int i2 = Integer.parseInt(str);
      if (paramBoolean) {
        i1 = i2 + 10;
      }
      for (;;)
      {
        d.setText(i1 + "");
        return;
        i2 -= 10;
        if (i2 >= 10) {
          i1 = i2;
        }
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException) {}
  }
  
  private boolean a(String[] paramArrayOfString, Location paramLocation)
  {
    try
    {
      LocationManager localLocationManager = (LocationManager)getSystemService("location");
      LocationService localLocationService = AppData.b().n();
      if (paramLocation == null)
      {
        i2 = paramArrayOfString.length;
        i1 = 0;
        while (i1 < i2)
        {
          paramLocation = paramArrayOfString[i1];
          localLocationManager.clearTestProviderEnabled(paramLocation);
          localLocationManager.removeTestProvider(paramLocation);
          if ((localLocationService instanceof s)) {
            ((s)localLocationService).a(null);
          }
          Log.d("CONFIG", "Cleared mock location for " + paramLocation);
          i1 += 1;
        }
      }
      int i2 = paramArrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localObject = paramArrayOfString[i1];
        localLocationManager.addTestProvider((String)localObject, false, false, false, false, false, false, false, 1, 1);
        localLocationManager.setTestProviderEnabled((String)localObject, false);
        localLocationManager.clearTestProviderLocation((String)localObject);
        i1 += 1;
      }
      Object localObject = new aw(this);
      i2 = paramArrayOfString.length;
      i1 = 0;
      while (i1 < i2)
      {
        String str = paramArrayOfString[i1];
        paramLocation = new Location(paramLocation);
        paramLocation.setProvider(str);
        paramLocation.setTime(System.currentTimeMillis());
        localLocationManager.setTestProviderEnabled(str, true);
        localLocationManager.requestLocationUpdates(str, 0L, 0.0F, (LocationListener)localObject);
        localLocationManager.setTestProviderLocation(str, paramLocation);
        if ((localLocationService instanceof s)) {
          ((s)localLocationService).a(paramLocation);
        }
        Log.d("CONFIG", "Set up mock location for " + str + " as " + paramLocation);
        Log.d("CONFIG", "Most recent location is: " + localLocationService.c());
        i1 += 1;
      }
      localLocationManager.removeUpdates((LocationListener)localObject);
      localLocationService.d();
      return true;
    }
    catch (SecurityException paramArrayOfString)
    {
      cr.a(2131165759, 1);
      return false;
    }
    catch (Exception paramArrayOfString)
    {
      Log.e("CONFIG", "Could not set the location for the Mock", paramArrayOfString);
    }
    return false;
  }
  
  private void b()
  {
    b.setChecked(ac);
    c.setChecked(ad);
    d.setText(af + "");
    g.setChecked(ah);
    i.setChecked(ai);
    j.setChecked(zob);
    p.setText(com.yelp.android.services.x.c().a());
    if (TextUtils.isEmpty(AppData.b().o().f()))
    {
      r.setChecked(false);
      return;
    }
    r.setChecked(true);
    s.setText(AppData.b().o().f());
  }
  
  private void c()
  {
    i1 = 10;
    ac = b.isChecked();
    ad = c.isChecked();
    try
    {
      i2 = Integer.parseInt(d.getText().toString());
      if (i2 >= 10) {
        break label138;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        int i2;
        continue;
        i1 = i2;
      }
    }
    af = i1;
    ah = g.isChecked();
    ai = i.isChecked();
    zob = j.isChecked();
    AppData.b().o().a(s.getText().toString());
    AppData.b().a(p.getText().toString());
  }
  
  private void d()
  {
    new com.yelp.android.ui.dialogs.v(this, "Biz Search Cache", AppData.b().i().g().c(), null, false).show();
  }
  
  private void e()
  {
    Object localObject = ImageLoader.getSnapShot();
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append(String.format("Number of image requests: %d", new Object[] { Integer.valueOf(((Set)localObject).size()) }));
    localStringBuilder.append("\n============================\n\n");
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ImageLoader localImageLoader = (ImageLoader)((Iterator)localObject).next();
      localStringBuilder.append(String.format("Type[%s], Query[%s], Permanent[%s], Response[%d]", new Object[] { localImageLoader.getClass().getSimpleName(), imageUrl, Boolean.valueOf(cachePermanently), Integer.valueOf(localImageLoader.getResponse()) }));
      localStringBuilder.append("\n============================\n\n");
    }
    new com.yelp.android.ui.dialogs.v(this, "Image Requests", localStringBuilder.toString(), null, false).show();
  }
  
  private void f() {}
  
  private void g()
  {
    Object localObject = ApiRequest.getLiveRequests();
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append(String.format("Size of Requests: %d", new Object[] { Integer.valueOf(((Set)localObject).size()) }));
    localStringBuilder.append("\n============================\n\n");
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ApiRequest localApiRequest = (ApiRequest)((Iterator)localObject).next();
      localStringBuilder.append(String.format("Type[%s], Query[%s], Status[%s], Exception[%s]", new Object[] { localApiRequest.getClass().getSimpleName(), localApiRequest.getCacheDescriptor(), localApiRequest.getStatus(), localApiRequest.getException() }));
      localStringBuilder.append("\n============================\n\n");
    }
    new com.yelp.android.ui.dialogs.v(this, "Net Requests", localStringBuilder.toString(), null, false).show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903075);
    a();
    b();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    int i2 = 0;
    int i3 = 0;
    int i1 = 0;
    Object localObject1 = AppData.b();
    Object localObject2;
    Object localObject3;
    if (paramInt == 4061)
    {
      localObject2 = Debug.ApiEndpoint.values();
      localObject3 = new String[localObject2.length];
      i2 = localObject2.length;
      paramInt = i1;
      while (paramInt < i2)
      {
        Object localObject4 = localObject2[paramInt];
        localObject3[localObject4.ordinal()] = endpoint;
        paramInt += 1;
      }
      return new AlertDialog.Builder(this).setSingleChoiceItems((CharSequence[])localObject3, -1, new t(this, (AppData)localObject1, (Debug.ApiEndpoint[])localObject2)).setPositiveButton(17039370, null).setTitle("API Host").create();
    }
    if (paramInt == 4058)
    {
      localObject1 = new AlertDialog.Builder(this);
      localObject2 = new ap(this);
      return ((AlertDialog.Builder)localObject1).setSingleChoiceItems(new String[] { "Disabled", "Enabled" }, 0, (DialogInterface.OnClickListener)localObject2).setPositiveButton(17039370, null).setNeutralButton("Fire Intent Now!", new ae(this)).setTitle("API Host").create();
    }
    if (paramInt == 4060)
    {
      localObject1 = new String[14];
      localObject1[0] = "yelp4:///biz/4kMBvIEWPxWkWKFN__8SxQ";
      localObject1[1] = "yelp4:///check_in/sreJxXMkMWXGQ01zBgRXMg";
      localObject1[2] = "yelp5.3:///deal/_kUGB7vjZj3qO4mMRrotsw";
      localObject1[3] = "yelp5.3:///user/deals";
      localObject1[4] = "yelp5.3:///deals";
      localObject1[5] = "yelp5.3:///user/alerts";
      localObject1[6] = "yelp:///tip_of_the_day/UGgx2mnAwJWPhSQ0ylKFZg";
      localObject1[7] = "yelp:///quicktip/ShdnbgwkH8vP4wNmQgLuBg";
      localObject1[8] = "yelp5.3:///user/requests/compliments";
      localObject1[9] = "yelp:///biz_videos?biz_id=u0SDDLwjc1D2G0QCu4R0Rw&video_id=OTMRCpxOg0S7dINxCmbTvg";
      localObject1[10] = "yelp:///biz_photos/jRbn8hAwWd9yd8YxjwLuAg?select=qhLeGws6jR6xWlFlg5Gkdw";
      localObject1[11] = "yelp:///events/OjFyYRhfiupyZwjeHrpg7Q";
      localObject1[12] = "yelp:///search?find_desc=reservations&find_loc=San+Francisco&attribs_filter=BusinessAcceptsCreditCards,OnlineReservations";
      localObject1[13] = "yelp:///search?find_desc=reservations&find_loc=San+Francisco";
      return new AlertDialog.Builder(this).setSingleChoiceItems((CharSequence[])localObject1, 0, new ax(this, (String[])localObject1)).setTitle("Push Test").create();
    }
    if (paramInt == 4059)
    {
      localObject1 = Debug.MockLocation.values();
      localObject2 = new String[localObject1.length + 1];
      localObject2[0] = "Disable Mocking";
      i1 = localObject1.length;
      paramInt = i2;
      while (paramInt < i1)
      {
        localObject3 = localObject1[paramInt];
        localObject2[(localObject3.ordinal() + 1)] = ((Debug.MockLocation)localObject3).name();
        paramInt += 1;
      }
      return new AlertDialog.Builder(this).setSingleChoiceItems((CharSequence[])localObject2, -1, new ay(this, (Debug.MockLocation[])localObject1)).setPositiveButton(17039370, null).setTitle("Mock location").create();
    }
    if (paramInt == 80085) {
      return new AlertDialog.Builder(this).setItems(Debug.c, new az(this)).setTitle("Launch VIEW Intent").create();
    }
    if (paramInt == 2131493118)
    {
      localObject1 = new CharSequence[PlatformQualifier.values().length];
      localObject2 = new boolean[PlatformQualifier.values().length];
      localObject3 = AppData.b().f().a(this);
      paramInt = i3;
      while (paramInt < PlatformQualifier.values().length)
      {
        localObject1[paramInt] = PlatformQualifier.values()[paramInt].name();
        localObject2[paramInt] = ((Collection)localObject3).contains(localObject1[paramInt]);
        paramInt += 1;
      }
      return new AlertDialog.Builder(this).setMultiChoiceItems((CharSequence[])localObject1, (boolean[])localObject2, new ba(this, (CharSequence[])localObject1)).setTitle("PlatformQualifier").create();
    }
    if (paramInt == 8675309)
    {
      localObject1 = new CharSequence[Holiday.values().length + 1];
      paramInt = localObject1.length;
      i2 = Holiday.values().length;
      i1 = paramInt - 1;
      paramInt = 0;
      while (paramInt < i2)
      {
        localObject1[paramInt] = Holiday.values()[paramInt].name();
        if (Holiday.values()[paramInt] == Holiday.mForcedHoliday) {
          i1 = paramInt;
        }
        paramInt += 1;
      }
      localObject1[(localObject1.length - 1)] = "None";
      return new AlertDialog.Builder(this).setTitle("Which HolidayTheme").setSingleChoiceItems((CharSequence[])localObject1, i1, new bb(this)).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if (paramInt == 4061) {
      ((AlertDialog)paramDialog).getListView().setItemChecked(com.yelp.android.services.x.d().ordinal(), true);
    }
    while (paramInt != 4058)
    {
      super.onPrepareDialog(paramInt, paramDialog);
      return;
    }
    if (!AppData.b().o().a()) {}
    for (int i1 = 0;; i1 = 1)
    {
      ((AlertDialog)paramDialog).getListView().setItemChecked(i1, true);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */