package com.yelp.android.ui.util;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.UserLocalMediaRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.IdentifiableMedia;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.i;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class ActivityYelpHopScotchMediaList
  extends YelpListActivity
  implements m<dm>
{
  protected YelpBusiness a;
  protected UserLocalMediaRequest b;
  protected i c;
  
  private void c()
  {
    registerDirtyEventReceiver("com.yelp.android.media.update", new a(this));
  }
  
  protected View a(int paramInt)
  {
    try
    {
      Object localObject = (ViewStub)findViewById(2131493323);
      ((ViewStub)localObject).setLayoutResource(paramInt);
      localObject = ((ViewStub)localObject).inflate();
      return (View)localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      YelpLog.e(this, "You can only inflate a Banner View once.");
      throw new IllegalStateException("You can only inflate a Banner View once.");
    }
    catch (NullPointerException localNullPointerException)
    {
      YelpLog.e(this, "You can only inflate a Banner View once.");
      throw new IllegalStateException("You can only inflate a Banner View once.");
    }
  }
  
  protected void a(Bundle paramBundle)
  {
    if (paramBundle.containsKey("bitmap_extra"))
    {
      File localFile = new File(paramBundle.getString("bitmap_extra"));
      String str1 = paramBundle.getString("caption_extra");
      String str2 = paramBundle.getString("photo_id_extra");
      paramBundle = str1;
      if (str1 == null) {
        paramBundle = "";
      }
      c.a(localFile, paramBundle, str2);
      c(r() + 1);
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener, EventIri paramEventIri, Map<String, Object> paramMap, Bundle paramBundle)
  {
    c = i.a(this, paramOnClickListener, paramEventIri, paramMap, a.getId());
    c.b(paramBundle);
    if (c.isEmpty()) {
      showLoadingDialog();
    }
    q().setAdapter(c);
    q().setItemsCanFocus(true);
    q().f();
    d();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    paramApiRequest = new ArrayList();
    Iterator localIterator = paramdm.c().iterator();
    while (localIterator.hasNext()) {
      paramApiRequest.add((IdentifiableMedia)localIterator.next());
    }
    c.c(paramApiRequest);
    c.b().addAll(paramdm.a());
    c.c().addAll(paramdm.b());
    c.b(paramdm.d());
    c.notifyDataSetChanged();
    c(paramdm.e() + paramdm.c().size());
    hideLoadingDialog();
    if ((c.getCount() < paramdm.d()) && (!paramdm.c().isEmpty())) {
      d();
    }
  }
  
  protected View b(int paramInt)
  {
    try
    {
      Object localObject = (ViewStub)findViewById(2131493324);
      ((ViewStub)localObject).setLayoutResource(paramInt);
      localObject = ((ViewStub)localObject).inflate();
      return (View)localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      YelpLog.e(this, "You can only inflate a ListView Background View once.");
      throw new IllegalStateException("You can only inflate a ListView Background View once.");
    }
    catch (NullPointerException localNullPointerException)
    {
      YelpLog.e(this, "You can only inflate a ListView Background View once.");
      throw new IllegalStateException("You can only inflate a ListView Background View once.");
    }
  }
  
  protected void d()
  {
    if ((b == null) || (b.isCompleted()))
    {
      b = new UserLocalMediaRequest(getAppData().m().s(), a, r(), this);
      b.execute(new Void[0]);
    }
  }
  
  public UserLocalMediaRequest g()
  {
    return (UserLocalMediaRequest)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void h()
  {
    q().setSelection(q().getCount() - 1);
  }
  
  @TargetApi(16)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903122);
    if (Build.VERSION.SDK_INT < 16) {
      q().setBackgroundDrawable(null);
    }
    for (;;)
    {
      q().setScrollingCacheEnabled(false);
      int i = cp.a(this, 2130772041);
      q().setPadding(0, i / 2, 0, i);
      q().setClipToPadding(false);
      q().setVerticalFadingEdgeEnabled(false);
      b = g();
      c();
      return;
      q().setBackground(null);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    c.a(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ActivityYelpHopScotchMediaList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */