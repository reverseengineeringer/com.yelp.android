package com.yelp.android.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.Session.Builder;
import com.facebook.Session.OpenRequest;
import com.facebook.Session.StatusCallback;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.cb;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.services.x;
import com.yelp.android.util.YelpLog;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class FacebookConnectManager<DialogActivity extends Activity,  extends ez>
{
  private static final FacebookConnectManager.FacebookPermission[] a = new FacebookConnectManager.FacebookPermission[0];
  private DialogActivity b;
  private fg<DialogActivity> c;
  private final int d;
  private final int e;
  private boolean f;
  private FacebookUser g;
  private final FacebookConnectManager.FbPermissionSet h;
  private final Session.StatusCallback i = new fd(this);
  private final Session.StatusCallback j = new fe(this);
  private final i k = new ff(this);
  
  public FacebookConnectManager(DialogActivity paramDialogActivity, int paramInt1, fg<DialogActivity> paramfg, FacebookConnectManager.FbPermissionSet paramFbPermissionSet, int paramInt2)
  {
    a(paramfg);
    a(paramDialogActivity);
    d = paramInt1;
    e = paramInt2;
    g = null;
    h = paramFbPermissionSet;
  }
  
  public static String a(String paramString)
  {
    if (paramString == null)
    {
      YelpLog.e("FBConnect", "Tried to get profile image URL for empty user");
      return "";
    }
    return String.format(AppData.b().getResources().getString(2131165803), new Object[] { paramString });
  }
  
  private static List<String> a(Session paramSession)
  {
    LinkedList localLinkedList = new LinkedList();
    if (paramSession != null)
    {
      Iterator localIterator = EnumSet.allOf(FacebookConnectManager.FacebookPermission.class).iterator();
      while (localIterator.hasNext())
      {
        FacebookConnectManager.FacebookPermission localFacebookPermission = (FacebookConnectManager.FacebookPermission)localIterator.next();
        if (localFacebookPermission.isGranted(paramSession)) {
          localLinkedList.add(localFacebookPermission.toString());
        }
      }
    }
    return localLinkedList;
  }
  
  private void a(Throwable paramThrowable)
  {
    f = false;
    ((ez)b).hideLoadingDialog();
    c.a(this, paramThrowable);
  }
  
  private void a(boolean paramBoolean)
  {
    new Request(Session.getActiveSession(), "/me", null, HttpMethod.GET, new fc(this, paramBoolean)).executeAsync();
  }
  
  public static boolean a()
  {
    Session localSession = Session.getActiveSession();
    return (localSession != null) && (localSession.isOpened());
  }
  
  private void i()
  {
    Session localSession = Session.getActiveSession();
    if (localSession != null)
    {
      localSession.removeCallback(i);
      localSession.removeCallback(j);
    }
  }
  
  private void j()
  {
    f = false;
    c.b(this);
  }
  
  private void k()
  {
    ((ez)b).showLoadingDialog(d);
    a(AppData.b().m().c());
  }
  
  public h a(i parami)
  {
    if ((g == null) || (TextUtils.isEmpty(g.getId())))
    {
      YelpLog.e("FBConnect", "Tried to connect on empty user");
      return null;
    }
    Session localSession = Session.getActiveSession();
    String str = localSession.getAccessToken();
    long l = localSession.getExpirationDate().getTime();
    return (h)new cb(TextUtils.join(",", a(localSession)), x.a(), g.getId(), str, TimeUnit.MILLISECONDS, l, parami).execute(new Void[0]);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (Session.getActiveSession() != null) {
      Session.getActiveSession().onActivityResult(b, paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void a(DialogActivity paramDialogActivity)
  {
    b = paramDialogActivity;
  }
  
  public void a(fg<DialogActivity> paramfg)
  {
    c = paramfg;
  }
  
  public DialogActivity b()
  {
    return b;
  }
  
  public FacebookUser c()
  {
    return g;
  }
  
  public FacebookConnectManager.FbPermissionSet d()
  {
    return h;
  }
  
  public void e()
  {
    i();
    Session localSession = new Session.Builder(b).setApplicationId(x.b()).setTokenCachingStrategy(new fh(null)).build();
    Session.setActiveSession(localSession);
    localSession.openForRead(new Session.OpenRequest(b).setRequestCode(e).setPermissions(h.getReadPermissions()).setCallback(i));
    f = true;
  }
  
  public boolean f()
  {
    return f;
  }
  
  public void g()
  {
    i();
    Session localSession = Session.getActiveSession();
    if (localSession != null) {
      localSession.closeAndClearTokenInformation();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.FacebookConnectManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */