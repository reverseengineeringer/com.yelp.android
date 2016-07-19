package com.yelp.android.ui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.UserLocalMediaRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.IdentifiableMedia;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.a;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class ActivityYelpHopScotchMediaList
  extends YelpListActivity
  implements ApiRequest.b<MediaPayload>
{
  protected YelpBusiness a;
  protected UserLocalMediaRequest b;
  protected a c;
  
  private void b()
  {
    registerDirtyEventReceiver("com.yelp.android.media.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (Media)ObjectDirtyEvent.a(paramAnonymousIntent);
        if (paramAnonymousContext.a(Media.MediaType.PHOTO)) {
          c.a((Photo)paramAnonymousContext);
        }
      }
    });
  }
  
  protected View a(int paramInt)
  {
    try
    {
      Object localObject = (ViewStub)findViewById(2131689979);
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
    if (paramBundle.containsKey("extra.images"))
    {
      paramBundle = paramBundle.getParcelableArrayList("extra.images");
      Iterator localIterator = paramBundle.iterator();
      while (localIterator.hasNext())
      {
        Photo localPhoto = (Photo)localIterator.next();
        c.b(localPhoto);
      }
      c(s() + paramBundle.size());
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener, EventIri paramEventIri, Map<String, Object> paramMap, Bundle paramBundle)
  {
    c = a.a(this, paramOnClickListener, paramEventIri, paramMap, a.aD());
    c.b(paramBundle);
    if (c.isEmpty()) {
      showLoadingDialog();
    }
    r().setAdapter(c);
    r().setItemsCanFocus(true);
    r().f();
    c();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, MediaPayload paramMediaPayload)
  {
    paramApiRequest = new ArrayList();
    Iterator localIterator = paramMediaPayload.c().iterator();
    while (localIterator.hasNext()) {
      paramApiRequest.add((IdentifiableMedia)localIterator.next());
    }
    c.c(paramApiRequest);
    c.c().addAll(paramMediaPayload.d());
    c.d().addAll(paramMediaPayload.e());
    c.b(paramMediaPayload.a());
    c.notifyDataSetChanged();
    c(paramMediaPayload.b() + paramMediaPayload.c().size());
    hideLoadingDialog();
    if (c.t_() < paramMediaPayload.a()) {
      c();
    }
  }
  
  protected View b(int paramInt)
  {
    try
    {
      Object localObject = (ViewStub)findViewById(2131689980);
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
  
  protected void c()
  {
    if ((b == null) || (b.v()))
    {
      b = new UserLocalMediaRequest(getAppData().q().p(), a, s(), this);
      b.f(new Void[0]);
    }
  }
  
  public UserLocalMediaRequest g()
  {
    return (UserLocalMediaRequest)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void i()
  {
    r().setSelection(r().getCount() - 1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903131);
    r().setBackground(null);
    r().setScrollingCacheEnabled(false);
    int i = getResources().getDimensionPixelSize(2131361958);
    r().setPadding(0, i / 2, 0, i);
    r().setClipToPadding(false);
    r().setVerticalFadingEdgeEnabled(false);
    b = g();
    b();
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