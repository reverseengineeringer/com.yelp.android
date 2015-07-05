package com.yelp.android.ui.activities.photoviewer;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.du;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest.DeletableObject;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.FlagMediaDialog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ActivityMediaViewer
  extends YelpActivity
  implements aq
{
  private ViewPager a;
  private ak b;
  private String c;
  private String d;
  private PhotoChrome e;
  private ImageView f;
  private k g;
  private List<Media> h;
  private int i;
  private boolean j;
  private int k = -1;
  private int l;
  private MediaRequest m;
  private boolean n;
  private boolean o;
  private final du p = new d(this);
  private final m<dm> q = new h(this);
  private final ad r = new i(this);
  private final m<String> s = new j(this);
  private final View.OnClickListener t = new b(this);
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, List<? extends Media> paramList, int paramInt)
  {
    paramContext = a(paramContext, paramYelpBusiness.getId(), paramList, paramInt);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt)
  {
    YelpActivity.IntentData.setData(paramList);
    paramContext = new Intent(paramContext, ActivityMediaViewer.class);
    paramContext.putExtra("extra.media_request", paramMediaRequest);
    paramContext.putExtra("extra.media_index", paramInt);
    paramContext.putExtra("extra.business_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, List<? extends Media> paramList, int paramInt)
  {
    return a(paramContext, paramString, new BusinessMediaRequest(paramString, paramList.size(), 42), paramList, paramInt);
  }
  
  public static Intent a(Context paramContext, String paramString1, List<? extends Media> paramList, String paramString2)
  {
    paramContext = a(paramContext, paramString1, BusinessMediaRequest.photosStartingAtSpecificPhoto(paramString1, paramString2, 42), paramList, 0);
    paramContext.putExtra("extra.selected_photo", paramString2);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, List<? extends Media> paramList, int paramInt)
  {
    return a(paramContext, null, null, paramList, paramInt);
  }
  
  public static MediaRequest a(Intent paramIntent)
  {
    return (MediaRequest)paramIntent.getParcelableExtra("extra.media_request");
  }
  
  private void a(int paramInt)
  {
    String str = null;
    if (k == paramInt) {}
    label121:
    label195:
    label319:
    do
    {
      return;
      a.setCurrentItem(paramInt);
      k = paramInt;
      Object localObject;
      boolean bool;
      if ((paramInt < h.size()) && (h.get(paramInt) != null))
      {
        localObject = (Media)h.get(paramInt);
        a((Media)localObject);
        if (o)
        {
          e.d();
          e.a((Media)localObject);
          if (((Media)localObject).isMediaType(Media.MediaType.VIDEO)) {
            str = ((Media)localObject).getId();
          }
          if (str == null) {
            break label195;
          }
          bool = true;
          a(bool);
          localObject = b.a().iterator();
        }
      }
      for (;;)
      {
        if (((Iterator)localObject).hasNext())
        {
          VideoPageFragment localVideoPageFragment = (VideoPageFragment)((Iterator)localObject).next();
          if (localVideoPageFragment.q().getId().equals(str))
          {
            localVideoPageFragment.r();
            continue;
            e.c();
            break;
            bool = false;
            break label121;
          }
          localVideoPageFragment.s();
          continue;
          if (!b.b(paramInt)) {
            break label319;
          }
          o = e.isShown();
          e.c();
        }
      }
      while ((paramInt < l) && (m != null) && (m.isCompleted()))
      {
        paramInt = Math.max(0, l - 42);
        m = new BusinessMediaRequest(((BusinessMediaRequest)m).getBusinessId(), paramInt, l - paramInt, q);
        m.execute(new Void[0]);
        return;
        e.a(null);
      }
    } while ((h.size() >= b.getCount()) || (paramInt < i) || (j));
    j = true;
    a.post(new g(this, paramInt));
  }
  
  private void a(Media paramMedia)
  {
    HashMap localHashMap;
    if (c != null)
    {
      localHashMap = new HashMap();
      localHashMap.put("id", c);
      if (!paramMedia.isMediaType(Media.MediaType.PHOTO)) {
        break label142;
      }
      localHashMap.put("photo_id", paramMedia.getId());
      localHashMap.put("user_id", paramMedia.getUserId());
      AppData.a(ViewIri.BusinessPhoto, localHashMap);
      com.yelp.android.analytics.j.a(KahunaEventIri.BusinessPhoto);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(d))
      {
        localHashMap = new HashMap();
        localHashMap.put("event_id", d);
        localHashMap.put("photo_id", paramMedia.getId());
        AppData.a(ViewIri.EventPhoto, localHashMap);
      }
      return;
      label142:
      if (paramMedia.isMediaType(Media.MediaType.VIDEO))
      {
        localHashMap.put("video_id", paramMedia.getId());
        localHashMap.put("video_source", ((Video)paramMedia).getVideoSource());
        localHashMap.put("user_id", paramMedia.getUserId());
        AppData.a(ViewIri.BusinessVideo, localHashMap);
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k.b(g);
      b(k.c(g));
      f.setVisibility(0);
      return;
    }
    f.setVisibility(8);
  }
  
  public static int b(Intent paramIntent)
  {
    return paramIntent.getIntExtra("extra.media_index", 0);
  }
  
  public static Intent b(Context paramContext, String paramString, List<? extends Media> paramList, int paramInt)
  {
    return a(paramContext, paramString, null, paramList, paramInt);
  }
  
  private void b(boolean paramBoolean)
  {
    ImageView localImageView = f;
    Resources localResources;
    if (paramBoolean)
    {
      i1 = 2130838218;
      localImageView.setImageResource(i1);
      localImageView = f;
      localResources = getResources();
      if (!paramBoolean) {
        break label55;
      }
    }
    label55:
    for (int i1 = 2131166788;; i1 = 2131166132)
    {
      localImageView.setContentDescription(localResources.getString(i1));
      return;
      i1 = 2130837628;
      break;
    }
  }
  
  private boolean b(Media paramMedia)
  {
    dc localdc = AppData.b().m();
    if (!localdc.e())
    {
      int i1;
      if (paramMedia.isMediaType(Media.MediaType.VIDEO)) {
        if (localdc.c()) {
          i1 = 2131166784;
        }
      }
      for (;;)
      {
        startActivityForResult(ActivityLogin.a(this, i1), 1100);
        return false;
        i1 = 2131166054;
        continue;
        if (localdc.c()) {
          i1 = 2131166782;
        } else {
          i1 = 2131166053;
        }
      }
    }
    return true;
  }
  
  public static Intent c(Context paramContext, String paramString, List<? extends Media> paramList, int paramInt)
  {
    paramContext = a(paramContext, paramList, paramInt);
    paramContext.putExtra("extra.event_id", paramString);
    return paramContext;
  }
  
  private void c(Media paramMedia)
  {
    boolean bool = paramMedia.isMediaType(Media.MediaType.VIDEO);
    Object localObject;
    if (bool)
    {
      localObject = ViewIri.FlagVideo;
      AppData.a((com.yelp.android.analytics.iris.b)localObject, "id", paramMedia.getId());
      if (!bool) {
        break label104;
      }
      i1 = 2131166844;
      label41:
      localObject = getString(i1);
      if (!bool) {
        break label111;
      }
    }
    label104:
    label111:
    for (int i1 = 2131166455;; i1 = 2131166453)
    {
      localObject = FlagMediaDialog.a((String)localObject, getString(i1));
      ((FlagMediaDialog)localObject).a(new e(this, bool, paramMedia, (FlagMediaDialog)localObject));
      ((FlagMediaDialog)localObject).show(getSupportFragmentManager(), null);
      return;
      localObject = ViewIri.FlagPhoto;
      break;
      i1 = 2131166843;
      break label41;
    }
  }
  
  private void d(Media paramMedia)
  {
    String str2;
    if (paramMedia.isMediaType(Media.MediaType.VIDEO))
    {
      AppData.a(ViewIri.BusinessVideoDelete, "video_id", paramMedia.getId());
      str2 = getString(2131165690);
    }
    for (String str1 = getString(2131165376);; str1 = getString(2131165375))
    {
      new AlertDialog.Builder(this).setTitle(str2).setMessage(str1).setPositiveButton(2131165686, new f(this, paramMedia)).setNegativeButton(2131166180, null).create().show();
      return;
      AppData.a(ViewIri.BusinessPhotoDelete, "photo_id", paramMedia.getId());
      str2 = getString(2131165689);
    }
  }
  
  private void e(Media paramMedia)
  {
    if (paramMedia.isMediaType(Media.MediaType.VIDEO)) {
      AppData.a(EventIri.BusinessVideoDeleted, "video_id", paramMedia.getId());
    }
    for (BusinessObjectDeleteRequest.DeletableObject localDeletableObject = BusinessObjectDeleteRequest.DeletableObject.VIDEO;; localDeletableObject = BusinessObjectDeleteRequest.DeletableObject.PHOTO)
    {
      new BusinessObjectDeleteRequest(localDeletableObject, paramMedia.getId(), new l(this, paramMedia)).execute(new Void[0]);
      showLoadingDialog();
      return;
      AppData.a(EventIri.BusinessPhotoDeleted, "photo_id", paramMedia.getId());
    }
  }
  
  private void f()
  {
    b.notifyDataSetChanged();
    i = ((int)(0.75F * h.size()));
    j = false;
    hideLoadingDialog();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    paramString = b.a(paramString);
    if ((paramBoolean) && (b.getItemPosition(paramString) == a.getCurrentItem())) {
      paramString.n();
    }
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected boolean c()
  {
    return true;
  }
  
  protected boolean d()
  {
    return true;
  }
  
  protected boolean e()
  {
    return true;
  }
  
  public ViewIri getIri()
  {
    if (!TextUtils.isEmpty(d)) {
      return ViewIri.EventPhotoFullScreen;
    }
    return ViewIri.BusinessPhotosFullscreen;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    paramb = Collections.emptyMap();
    if (c != null) {
      paramb = Collections.singletonMap("id", c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramb = Collections.singletonMap("event_id", d);
    }
    return paramb;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1043)
    {
      if (paramInt2 == 0) {
        e.setLikeButtonChecked(false);
      }
      while (paramInt2 != -1) {
        return;
      }
      e.setLikeButtonChecked(true);
      return;
    }
    if (paramInt1 == 1100)
    {
      Media localMedia = (Media)h.get(a.getCurrentItem());
      dc localdc = AppData.b().m();
      if ((localMedia != null) && (localdc.e()))
      {
        if (localdc.b().equals(localMedia.getUserId())) {
          break label114;
        }
        n = true;
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      label114:
      e.a();
    }
  }
  
  public void onBackPressed()
  {
    if (getSupportFragmentManager().getBackStackEntryCount() == 0)
    {
      YelpActivity.IntentData.setData(h);
      Intent localIntent = new Intent(getIntent());
      localIntent.putExtra("extra.media_request", m);
      localIntent.putExtra("extra.media_index", a.getCurrentItem());
      setResult(-1, localIntent);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903100);
    a = ((ViewPager)findViewById(2131493241));
    e = ((PhotoChrome)findViewById(2131493242));
    f = ((ImageView)e.findViewById(2131493977));
    f.setOnClickListener(t);
    g = new k(null);
    c = getIntent().getStringExtra("extra.business_id");
    d = getIntent().getStringExtra("extra.event_id");
    h = ((List)YelpActivity.IntentData.popData());
    m = ((MediaRequest)getIntent().getParcelableExtra("extra.media_request"));
    int i1 = getIntent().getIntExtra("extra.media_index", 0);
    o = true;
    if (paramBundle != null)
    {
      i1 = paramBundle.getInt("media_index", 0);
      m = ((MediaRequest)paramBundle.getParcelable("media_request"));
      h = paramBundle.getParcelableArrayList("media_list");
      i = paramBundle.getInt("threshold");
      j = paramBundle.getBoolean("is_threshold_exceeded");
      o = paramBundle.getBoolean("show_chrome");
    }
    for (;;)
    {
      e.a(e(), d(), b(), c(), a(), false, r);
      if (o)
      {
        e.d();
        b = new ak(getSupportFragmentManager(), (YelpBusiness)getIntent().getParcelableExtra("extra.business"));
        if (e()) {
          b.a(e);
        }
        if (m != null)
        {
          m = m.resetWithOffset(m.countMedia(h));
          m.setCallback(q);
          m.execute(new Void[0]);
        }
        a.setOnPageChangeListener(p);
        a.setAdapter(b);
        b.a(h);
        b.a(h.size());
        b.notifyDataSetChanged();
        if (h.size() > 0) {
          break label476;
        }
        showLoadingDialog();
      }
      for (;;)
      {
        registerDirtyEventReceiver("com.yelp.android.media.delete", new a(this));
        registerDirtyEventReceiver("com.yelp.android.media.update", new c(this));
        return;
        e.c();
        break;
        label476:
        if ((i1 >= 0) && (i1 < b.getCount()))
        {
          a.setCurrentItem(i1);
          a(i1);
        }
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (m != null)
    {
      m.cancel(true);
      m.setCallback(null);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    k.a(g);
    k = -1;
  }
  
  protected void onResume()
  {
    super.onResume();
    if (m != null) {
      m.setCallback(q);
    }
    a(a.getCurrentItem());
    if (f.getVisibility() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  public void onResumeFragments()
  {
    super.onResumeFragments();
    if (n) {
      c((Media)h.get(a.getCurrentItem()));
    }
    n = false;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("media_index", a.getCurrentItem());
    paramBundle.putInt("threshold", i);
    paramBundle.putBoolean("is_threshold_exceeded", j);
    paramBundle.putBoolean("show_chrome", e.isShown());
    paramBundle.putParcelable("media_request", m);
    paramBundle.putParcelableArrayList("media_list", new ArrayList(h));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */