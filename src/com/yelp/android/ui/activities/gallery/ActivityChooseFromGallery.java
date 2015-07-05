package com.yelp.android.ui.activities.gallery;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.r;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.View;
import android.widget.GridView;
import android.widget.Spinner;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.Features;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.MediaStoreUtil;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.bs;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ActivityChooseFromGallery
  extends YelpActivity
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private GridView a;
  private k b;
  private p c;
  private String d;
  private MediaStoreUtil.MediaType e;
  private boolean f;
  private boolean g;
  private String h;
  private int i;
  private LoaderManager j;
  private i k = new b(this);
  private n l = new c(this);
  private com.yelp.android.ui.activities.media.b m = new g(this);
  
  public static Intent a(Context paramContext, MediaStoreUtil.MediaType paramMediaType, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    if ((paramBoolean2) && (TextUtils.isEmpty(paramString))) {
      YelpLog.e("ActivityChooseFromGallery", "Gallery started with contribution buttons and empty business ID!");
    }
    paramContext = new Intent(paramContext, ActivityChooseFromGallery.class);
    com.yelp.android.util.f.a(paramContext, "extra_media_type", paramMediaType);
    paramContext.putExtra("extra_copy_media_to_private_dir", paramBoolean1);
    paramContext.putExtra("extra_show_contribution_buttons", paramBoolean2);
    paramContext.putExtra("extra_business_id", paramString);
    return paramContext;
  }
  
  private void a(Cursor paramCursor)
  {
    LinkedList localLinkedList = new LinkedList();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      localLinkedList.add(q.a(paramCursor.getString(paramCursor.getColumnIndex("bucket_id")), paramCursor.getString(paramCursor.getColumnIndex("bucket_display_name"))));
      paramCursor.moveToNext();
    }
    a(localLinkedList);
  }
  
  private void a(String paramString)
  {
    new e(this, paramString).execute(new Void[0]);
  }
  
  @TargetApi(11)
  private void c()
  {
    ActionBar localActionBar = getSupportActionBar();
    Object localObject = new ArrayList();
    ((List)localObject).add(q.a);
    ((List)localObject).add(q.b);
    c = new p(this, (List)localObject);
    if (com.yelp.android.appdata.n.b(11))
    {
      localActionBar.b(2131166330);
      return;
    }
    localActionBar.a(2130903417);
    localObject = (Spinner)localActionBar.a();
    ((Spinner)localObject).setAdapter(c);
    ((Spinner)localObject).setOnItemSelectedListener(new a(this));
    localActionBar.b(false);
    localActionBar.c(true);
    localActionBar.a((View)localObject);
  }
  
  private void d()
  {
    Intent localIntent = new Intent("android.intent.action.PICK");
    if (e == MediaStoreUtil.MediaType.PHOTO) {
      localIntent.setType("image/*");
    }
    for (;;)
    {
      startActivityForResult(localIntent, 1029);
      return;
      if (e == MediaStoreUtil.MediaType.VIDEO) {
        localIntent.setType("video/*");
      } else if (e == MediaStoreUtil.MediaType.PHOTO_AND_VIDEO) {
        localIntent.setType("image/*,video/*");
      }
    }
  }
  
  private void e()
  {
    runOnUiThread(new f(this));
  }
  
  protected List<ContributionButtonAdapter.ContributionButton> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (!f) {}
    do
    {
      return localArrayList;
      if (e.hasPhotos()) {
        localArrayList.add(ContributionButtonAdapter.ContributionButton.TAKE_PHOTO);
      }
    } while ((!e.hasVideos()) || (!Features.video_capture.isEnabled()));
    localArrayList.add(ContributionButtonAdapter.ContributionButton.TAKE_VIDEO);
    return localArrayList;
  }
  
  public void a(r<Cursor> paramr, Cursor paramCursor)
  {
    switch (paramr.getId())
    {
    default: 
      return;
    case 0: 
      b.changeCursor(paramCursor);
      return;
    }
    a(paramCursor);
  }
  
  protected void a(List<q> paramList)
  {
    c.clear();
    c.add(q.a);
    c.a(paramList);
    c.add(q.b);
    c.notifyDataSetChanged();
  }
  
  protected void b()
  {
    b = new k(this, l, null, e);
    ContributionButtonAdapter localContributionButtonAdapter = new ContributionButtonAdapter(this, k, a());
    bs localbs = new bs();
    localbs.a(0, localContributionButtonAdapter);
    localbs.a(1, b);
    a.setAdapter(localbs);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UploadGallery;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while (paramInt2 != -1);
      MediaStoreUtil.MediaType localMediaType = MediaStoreUtil.a(paramIntent.getData(), getContentResolver());
      n localn = l;
      paramIntent = paramIntent.getData();
      if (localMediaType == MediaStoreUtil.MediaType.PHOTO) {}
      for (boolean bool = true;; bool = false)
      {
        localn.a(paramIntent, bool);
        return;
      }
    } while (paramInt2 != -1);
    setResult(paramInt2, paramIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    paramBundle = getIntent();
    g = paramBundle.getBooleanExtra("extra_copy_media_to_private_dir", true);
    e = ((MediaStoreUtil.MediaType)com.yelp.android.util.f.a(paramBundle, "extra_media_type", MediaStoreUtil.MediaType.class, MediaStoreUtil.MediaType.PHOTO));
    f = paramBundle.getBooleanExtra("extra_show_contribution_buttons", false);
    h = paramBundle.getStringExtra("extra_business_id");
    i = paramBundle.getIntExtra("CameraId", -1);
    a = ((GridView)findViewById(16908298));
    b();
    c();
    j = getSupportLoaderManager();
    j.initLoader(0, null, this);
    j.initLoader(1, null, this);
    ((Toolbar)findViewById(2131493634)).setNavigationIcon(2130838543);
  }
  
  public r<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      if (TextUtils.isEmpty(d)) {
        return MediaStoreUtil.a(this, e);
      }
      return MediaStoreUtil.a(this, e, d);
    }
    return MediaStoreUtil.b(this, e);
  }
  
  public void onLoaderReset(r<Cursor> paramr)
  {
    switch (paramr.getId())
    {
    default: 
      return;
    }
    b.changeCursor(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */