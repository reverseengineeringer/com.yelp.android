package com.facebook.share.widget;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.d;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f.a;
import com.facebook.share.internal.AppInviteDialogFeature;
import com.facebook.share.internal.h;
import com.facebook.share.internal.j;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;

public class a
  extends com.facebook.internal.f<AppInviteContent, b>
{
  private static final int b = CallbackManagerImpl.RequestCodeOffset.AppInvite.toRequestCode();
  
  public a(Activity paramActivity)
  {
    super(paramActivity, b);
  }
  
  public static void a(Activity paramActivity, AppInviteContent paramAppInviteContent)
  {
    new a(paramActivity).a(paramAppInviteContent);
  }
  
  private static Bundle b(AppInviteContent paramAppInviteContent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("app_link_url", paramAppInviteContent.a());
    localBundle.putString("preview_image_url", paramAppInviteContent.b());
    return localBundle;
  }
  
  public static boolean e()
  {
    return (i()) || (j());
  }
  
  private static boolean i()
  {
    return (Build.VERSION.SDK_INT >= 14) && (e.a(k()));
  }
  
  private static boolean j()
  {
    return (Build.VERSION.SDK_INT >= 14) && (e.b(k()));
  }
  
  private static d k()
  {
    return AppInviteDialogFeature.APP_INVITES_DIALOG;
  }
  
  protected List<com.facebook.internal.f<AppInviteContent, b>.a> c()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new a(null));
    localArrayList.add(new c(null));
    return localArrayList;
  }
  
  protected com.facebook.internal.a d()
  {
    return new com.facebook.internal.a(a());
  }
  
  private class a
    extends com.facebook.internal.f<AppInviteContent, a.b>.a
  {
    private a()
    {
      super();
    }
    
    public boolean a(AppInviteContent paramAppInviteContent)
    {
      return a.f();
    }
    
    public com.facebook.internal.a b(final AppInviteContent paramAppInviteContent)
    {
      com.facebook.internal.a locala = d();
      e.a(locala, new e.a()
      {
        public Bundle a()
        {
          return a.a(paramAppInviteContent);
        }
        
        public Bundle b()
        {
          Log.e("AppInviteDialog", "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
          return new Bundle();
        }
      }, a.g());
      return locala;
    }
  }
  
  public static final class b
  {
    private final Bundle a;
    
    public b(Bundle paramBundle)
    {
      a = paramBundle;
    }
  }
  
  private class c
    extends com.facebook.internal.f<AppInviteContent, a.b>.a
  {
    private c()
    {
      super();
    }
    
    public boolean a(AppInviteContent paramAppInviteContent)
    {
      return a.h();
    }
    
    public com.facebook.internal.a b(AppInviteContent paramAppInviteContent)
    {
      com.facebook.internal.a locala = d();
      e.a(locala, a.a(paramAppInviteContent), a.g());
      return locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */