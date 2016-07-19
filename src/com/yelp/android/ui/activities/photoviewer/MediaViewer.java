package com.yelp.android.ui.activities.photoviewer;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.e;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaFlagRequest;
import com.yelp.android.appdata.webrequests.MediaFlagRequest.FlaggableMedia;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.android.services.PhotoShareFormatter;
import com.yelp.android.services.ShareFormatter;
import com.yelp.android.services.VideoShareFormatter;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.FlagMediaDialog;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class MediaViewer
  extends YelpActivity
  implements PhotoChrome.a, VideoPageFragment.a
{
  private ImageView a;
  protected boolean b;
  protected a c;
  protected ViewPager d;
  protected PhotoChrome e;
  private a f;
  private com.yelp.android.appdata.webrequests.core.b g;
  private final ViewPager.e h = new ViewPager.e()
  {
    public void a(int paramAnonymousInt) {}
    
    public void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
    
    public void b(int paramAnonymousInt)
    {
      MediaViewer.a(MediaViewer.this, paramAnonymousInt);
    }
  };
  private final View.OnClickListener i = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      boolean bool2 = true;
      boolean bool3 = MediaViewer.a.c(MediaViewer.b(MediaViewer.this));
      paramAnonymousView = MediaViewer.b(MediaViewer.this);
      if (!bool3)
      {
        bool1 = true;
        MediaViewer.a.a(paramAnonymousView, bool1);
        paramAnonymousView = MediaViewer.this;
        if (bool3) {
          break label57;
        }
      }
      label57:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        MediaViewer.a(paramAnonymousView, bool1);
        return;
        bool1 = false;
        break;
      }
    }
  };
  private final ApiRequest.b<String> j = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, String paramAnonymousString)
    {
      hideLoadingDialog();
      AlertDialogFragment.a(null, paramAnonymousString).show(getSupportFragmentManager(), null);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      AlertDialogFragment.a(null, paramAnonymousYelpException.getMessage(MediaViewer.this)).show(getSupportFragmentManager(), null);
    }
  };
  
  protected static Intent a(Intent paramIntent, List<? extends Media> paramList, int paramInt)
  {
    YelpActivity.IntentData.setData(new ArrayList(paramList));
    paramIntent.putExtra("extra.media_index", paramInt);
    return paramIntent;
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.b(f);
      b(a.c(f));
      a.setVisibility(0);
      return;
    }
    a.setVisibility(8);
  }
  
  private void b(int paramInt)
  {
    boolean bool2 = true;
    d.setCurrentItem(paramInt);
    Object localObject = c.e(paramInt);
    boolean bool1;
    label76:
    label98:
    label105:
    Iterator localIterator;
    if ((((Media)localObject).a(Media.MediaType.PHOTO)) || (((Media)localObject).a(Media.MediaType.VIDEO)))
    {
      bool1 = true;
      b = bool1;
      if (!b) {
        break label175;
      }
      e.a((Media)localObject);
      e.e();
      if (!((Media)localObject).a(Media.MediaType.VIDEO)) {
        break label185;
      }
      localObject = ((Media)localObject).a();
      if (localObject == null) {
        break label191;
      }
      bool1 = bool2;
      a(bool1);
      localIterator = c.e().iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label204;
      }
      VideoPageFragment localVideoPageFragment = (VideoPageFragment)localIterator.next();
      if (localVideoPageFragment.s().a().equals(localObject))
      {
        localVideoPageFragment.t();
        continue;
        bool1 = false;
        break;
        label175:
        e.d();
        break label76;
        label185:
        localObject = null;
        break label98;
        label191:
        bool1 = false;
        break label105;
      }
      localVideoPageFragment.u();
    }
    label204:
    a(paramInt);
  }
  
  private void b(boolean paramBoolean)
  {
    ImageView localImageView = a;
    Resources localResources;
    if (paramBoolean)
    {
      k = 2130838494;
      localImageView.setImageResource(k);
      localImageView = a;
      localResources = getResources();
      if (!paramBoolean) {
        break label52;
      }
    }
    label52:
    for (int k = 2131166752;; k = 2131166186)
    {
      localImageView.setContentDescription(localResources.getString(k));
      return;
      k = 2130837659;
      break;
    }
  }
  
  private void c()
  {
    Object localObject = c.e(d.getCurrentItem());
    if (((Media)localObject).a(Media.MediaType.PHOTO)) {}
    for (localObject = new PhotoShareFormatter((Photo)localObject);; localObject = new VideoShareFormatter((Video)localObject))
    {
      showShareSheet((ShareFormatter)localObject);
      return;
    }
  }
  
  private boolean d(Media paramMedia)
  {
    if (!AppData.b().q().d())
    {
      if (paramMedia.a(Media.MediaType.VIDEO)) {}
      for (int k = 2131166114;; k = 2131166113)
      {
        startActivityForResult(ActivityLogin.a(this, 2131165705, k), 1049);
        return false;
        if (!paramMedia.a(Media.MediaType.PHOTO)) {
          break;
        }
      }
      throw new IllegalStateException("Can only flag photos / videos.");
    }
    return true;
  }
  
  private void e(final Media paramMedia)
  {
    final boolean bool = paramMedia.a(Media.MediaType.VIDEO);
    final Object localObject;
    if (bool)
    {
      localObject = ViewIri.FlagVideo;
      AppData.a((com.yelp.android.analytics.iris.a)localObject, "id", paramMedia.a());
      if (!bool) {
        break label104;
      }
      k = 2131166809;
      label41:
      localObject = getString(k);
      if (!bool) {
        break label111;
      }
    }
    label104:
    label111:
    for (int k = 2131166457;; k = 2131166455)
    {
      localObject = FlagMediaDialog.a((String)localObject, getString(k));
      ((FlagMediaDialog)localObject).a(new com.yelp.android.ui.dialogs.b()
      {
        public void a(String paramAnonymousString)
        {
          MediaFlagRequest.FlaggableMedia localFlaggableMedia = a(paramMedia);
          if (localFlaggableMedia == null) {
            throw new IllegalStateException("You should override getFlaggableMedia() to not return null if your MediaViewer can flag media.");
          }
          if (bool) {}
          for (EventIri localEventIri = EventIri.FlagVideo;; localEventIri = EventIri.FlagPhoto)
          {
            AppData.a(localEventIri, "id", paramMedia.a());
            new MediaFlagRequest(localFlaggableMedia, paramMedia.a(), paramAnonymousString, MediaViewer.a(MediaViewer.this)).f(new Void[0]);
            localObject.dismiss();
            showLoadingDialog();
            return;
          }
        }
      });
      ((FlagMediaDialog)localObject).show(getSupportFragmentManager(), null);
      return;
      localObject = ViewIri.FlagPhoto;
      break;
      k = 2131166808;
      break label41;
    }
  }
  
  private void f(final Media paramMedia)
  {
    String str2;
    if (paramMedia.a(Media.MediaType.VIDEO))
    {
      AppData.a(ViewIri.BusinessVideoDelete, "video_id", paramMedia.a());
      str2 = getString(2131165768);
    }
    for (String str1 = getString(2131165503);; str1 = getString(2131165502))
    {
      new AlertDialog.Builder(this).setTitle(str2).setMessage(str1).setPositiveButton(2131165760, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          MediaViewer.a(MediaViewer.this, paramMedia);
        }
      }).setNegativeButton(2131166229, null).create().show();
      return;
      AppData.a(ViewIri.BusinessPhotoDelete, "photo_id", paramMedia.a());
      str2 = getString(2131165765);
    }
  }
  
  private void g(Media paramMedia)
  {
    g = b(paramMedia);
    if (g == null) {
      throw new IllegalStateException("Request to delete media not found. Subclass should implement getAndFireDeleteRequest.");
    }
  }
  
  protected MediaFlagRequest.FlaggableMedia a(Media paramMedia)
  {
    return null;
  }
  
  protected abstract Set<PhotoChrome.DisplayFeature> a();
  
  protected void a(int paramInt) {}
  
  protected void a(Bundle paramBundle) {}
  
  public void a(PhotoChrome.DisplayFeature paramDisplayFeature, Media paramMedia, View paramView)
  {
    switch (8.a[paramDisplayFeature.ordinal()])
    {
    default: 
      throw new IllegalStateException("Display feature " + paramDisplayFeature.toString() + " was never handled.");
    case 1: 
      if (d(paramMedia)) {
        e(paramMedia);
      }
      return;
    case 2: 
      f(paramMedia);
      return;
    case 3: 
      startActivity(ActivityUserProfile.a(this, paramMedia.i().p()));
      return;
    }
    c();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    paramString = c.a(paramString);
    if ((paramBoolean) && (c.a(paramString) == d.getCurrentItem())) {
      paramString.p();
    }
  }
  
  protected com.yelp.android.appdata.webrequests.core.b b(Media paramMedia)
  {
    return null;
  }
  
  protected abstract a b();
  
  protected void c(Media paramMedia)
  {
    startActivity(ActivityLogin.a(this, 2131166116, SendCompliment.a(this, (Photo)paramMedia, Compliment.ComplimentType.PHOTOS)));
  }
  
  protected c.a f()
  {
    return null;
  }
  
  protected int g()
  {
    return 0;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (AppData.b().q().d()) {
        e(c.e(d.getCurrentItem()));
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903112);
    d = ((ViewPager)findViewById(2131689900));
    e = ((PhotoChrome)findViewById(2131689901));
    a = ((ImageView)e.findViewById(2131690835));
    a.setOnClickListener(i);
    f = new a(null);
    Object localObject;
    int k;
    if (paramBundle != null)
    {
      b = paramBundle.getBoolean("show_chrome");
      localObject = paramBundle.getParcelableArrayList("media_list");
      e.a(a(), this);
      registerDirtyEventReceiver("com.yelp.android.media.delete", new BroadcastReceiver()
      {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          paramAnonymousContext = (Media)ObjectDirtyEvent.a(paramAnonymousIntent);
          if (c.b(paramAnonymousContext)) {
            c.c();
          }
        }
      });
      registerDirtyEventReceiver("com.yelp.android.media.update", new BroadcastReceiver()
      {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          paramAnonymousContext = (Media)ObjectDirtyEvent.a(paramAnonymousIntent);
          e.a(paramAnonymousContext);
        }
      });
      a(paramBundle);
      c = b();
      c.a(e);
      c.a((List)localObject);
      if (g() == 0) {
        break label255;
      }
      k = g();
      label189:
      c.g(k);
      c.c();
      d.setAdapter(c);
      d.a(h);
      if (((List)localObject).size() > 0) {
        break label265;
      }
      showLoadingDialog();
    }
    label255:
    label265:
    do
    {
      return;
      b = true;
      localObject = (List)YelpActivity.IntentData.popData();
      break;
      k = ((List)localObject).size();
      break label189;
      k = getIntent().getIntExtra("extra.media_index", 0);
      d.setCurrentItem(k);
    } while (k != 0);
    b(k);
  }
  
  protected void onPause()
  {
    super.onPause();
    a.a(f);
    freezeRequest("delete_object", g);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((c.b() > 0) && (b)) {
      e.a(c.e(d.getCurrentItem()));
    }
    g = ((com.yelp.android.appdata.webrequests.core.b)thawRequest("delete_object", g, f()));
    if (a.getVisibility() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("show_chrome", b);
    paramBundle.putParcelableArrayList("media_list", new ArrayList(c.g()));
  }
  
  private static class a
  {
    private static AudioManager a;
    private static SharedPreferences b;
    private static boolean c;
    private static boolean d;
    
    private a()
    {
      if ((a == null) && (b == null))
      {
        AppData localAppData = AppData.b();
        b = PreferenceManager.getDefaultSharedPreferences(localAppData.getApplicationContext());
        a = (AudioManager)localAppData.getSystemService("audio");
        c = a();
        d = a();
      }
    }
    
    private void a(boolean paramBoolean)
    {
      if (paramBoolean != c)
      {
        b(paramBoolean);
        c = paramBoolean;
        b.edit().putBoolean("muted", paramBoolean).apply();
      }
    }
    
    private boolean a()
    {
      return a.getStreamVolume(3) == 0;
    }
    
    private void b()
    {
      a(b.getBoolean("muted", a()));
    }
    
    @TargetApi(23)
    private void b(boolean paramBoolean)
    {
      if (f.a(23))
      {
        AudioManager localAudioManager = a;
        if (paramBoolean) {}
        for (int i = -100;; i = 100)
        {
          localAudioManager.adjustStreamVolume(3, i, 0);
          return;
        }
      }
      a.setStreamMute(3, paramBoolean);
    }
    
    private void c()
    {
      if (d != c)
      {
        b(d);
        c = d;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */