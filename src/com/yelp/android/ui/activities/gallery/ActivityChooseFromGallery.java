package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.q;
import android.support.v4.app.q.a;
import android.support.v4.content.l;
import android.support.v7.app.ActionBar;
import android.support.v7.app.d.a;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.GridView;
import android.widget.Spinner;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.Features.a;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.activities.camera.ActivityVideoCapture;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.videotrim.ActivityVideoTrim;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.MediaStoreUtil;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.e;
import com.yelp.android.util.ffmpeg.FFmpeg;
import com.yelp.android.util.t;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ActivityChooseFromGallery
  extends YelpActivity
  implements q.a<Cursor>, a.b
{
  private int a;
  private GridView b;
  private a c;
  private b d;
  private String e;
  private MenuItem f;
  private MediaStoreUtil.MediaType g;
  private boolean h;
  private String i;
  private int j;
  private ArrayList<Uri> k;
  private ArrayList<Uri> l;
  private q m;
  private ContributionButtonAdapter.a n = new ContributionButtonAdapter.a()
  {
    public void a(final ContributionButtonAdapter.ContributionButton paramAnonymousContributionButton)
    {
      if (ActivityChooseFromGallery.e(ActivityChooseFromGallery.this) > 0)
      {
        ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramAnonymousContributionButton);
          }
        });
        return;
      }
      ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramAnonymousContributionButton);
    }
  };
  private a.a o = new a.a()
  {
    public void a(final Uri paramAnonymousUri, boolean paramAnonymousBoolean)
    {
      if (ActivityChooseFromGallery.f(ActivityChooseFromGallery.this) == 1) {
        if (paramAnonymousBoolean)
        {
          Intent localIntent = new Intent();
          localIntent.setData(paramAnonymousUri);
          localIntent.putExtra("extra_file_path", e.a(paramAnonymousUri, getContentResolver()));
          com.yelp.android.util.d.a(localIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
          setResult(-1, localIntent);
          finish();
        }
      }
      do
      {
        return;
        Features.video_upload_from_gallery.isEnabledAsync(ActivityChooseFromGallery.this, new Features.a()
        {
          public void a(boolean paramAnonymous2Boolean)
          {
            if (paramAnonymous2Boolean)
            {
              ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramAnonymousUri);
              return;
            }
            ActivityChooseFromGallery.b(ActivityChooseFromGallery.this, paramAnonymousUri);
          }
        });
        return;
        if ((ActivityChooseFromGallery.e(ActivityChooseFromGallery.this) >= ActivityChooseFromGallery.f(ActivityChooseFromGallery.this)) && (!ActivityChooseFromGallery.g(ActivityChooseFromGallery.this).contains(paramAnonymousUri)) && (!ActivityChooseFromGallery.h(ActivityChooseFromGallery.this).contains(paramAnonymousUri)))
        {
          as.a(String.format(getString(2131166131), new Object[] { Integer.valueOf(ActivityChooseFromGallery.f(ActivityChooseFromGallery.this)) }), 0);
          return;
        }
      } while (ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramAnonymousUri, paramAnonymousBoolean));
      ActivityChooseFromGallery.b(ActivityChooseFromGallery.this, paramAnonymousUri, paramAnonymousBoolean);
    }
  };
  
  public static Intent a(Context paramContext, MediaStoreUtil.MediaType paramMediaType, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    if ((paramBoolean2) && (TextUtils.isEmpty(paramString))) {
      YelpLog.e("ActivityChooseFromGallery", "Gallery started with contribution buttons and empty business ID!");
    }
    paramContext = new Intent(paramContext, ActivityChooseFromGallery.class);
    com.yelp.android.util.d.a(paramContext, "extra_media_type", paramMediaType);
    paramContext.putExtra("extra_copy_media_to_private_dir", paramBoolean1);
    paramContext.putExtra("extra_show_contribution_buttons", paramBoolean2);
    paramContext.putExtra("extra_business_id", paramString);
    return paramContext;
  }
  
  private void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    new d.a(this).a(getString(2131165420)).b(getString(2131165419)).b(2131166925, null).a(2131165730, paramOnClickListener).b().show();
  }
  
  private void a(Cursor paramCursor)
  {
    LinkedList localLinkedList = new LinkedList();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      localLinkedList.add(b.a.a(paramCursor.getString(paramCursor.getColumnIndex("bucket_id")), paramCursor.getString(paramCursor.getColumnIndex("bucket_display_name"))));
      paramCursor.moveToNext();
    }
    a(localLinkedList);
  }
  
  private void a(final Uri paramUri)
  {
    as.a(2131165634, 0);
    final String str = e.a(paramUri, getContentResolver());
    if ((str != null) && (t.a(str) > 3000))
    {
      new AsyncTask()
      {
        protected Void a(Void... paramAnonymousVarArgs)
        {
          if (FFmpeg.a(new File(str))) {
            if (ActivityChooseFromGallery.f(ActivityChooseFromGallery.this) == 1) {
              startActivityForResult(ActivityVideoTrim.a(ActivityChooseFromGallery.this, str, ActivityChooseFromGallery.i(ActivityChooseFromGallery.this)), 1068);
            }
          }
          for (;;)
          {
            return null;
            ActivityChooseFromGallery.b(ActivityChooseFromGallery.this, paramUri);
          }
        }
        
        protected void a(Void paramAnonymousVoid)
        {
          ActivityChooseFromGallery.j(ActivityChooseFromGallery.this);
        }
      }.execute(new Void[0]);
      return;
    }
    as.a(2131166786, 1);
    c(paramUri, false);
    f();
  }
  
  private void a(ContributionButtonAdapter.ContributionButton paramContributionButton)
  {
    g();
    if (ContributionButtonAdapter.ContributionButton.TAKE_PHOTO == paramContributionButton) {
      startActivityForResult(TakePhoto.a(this, i, true, true, j), 1062);
    }
    while (ContributionButtonAdapter.ContributionButton.TAKE_VIDEO != paramContributionButton) {
      return;
    }
    startActivityForResult(ActivityVideoCapture.a(this, i, true), 1063);
  }
  
  private void b(final Uri paramUri)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        as.a(2131166783, 1);
        ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramUri, false);
        ActivityChooseFromGallery.j(ActivityChooseFromGallery.this);
      }
    });
  }
  
  private void b(final Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k.add(paramUri);
      f();
    }
    for (;;)
    {
      e();
      return;
      f.setEnabled(false);
      l.add(paramUri);
      Features.video_upload_from_gallery.isEnabledAsync(this, new Features.a()
      {
        public void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, paramUri);
            return;
          }
          ActivityChooseFromGallery.b(ActivityChooseFromGallery.this, paramUri);
        }
      });
    }
  }
  
  private void c()
  {
    ActionBar localActionBar = getSupportActionBar();
    Object localObject = new ArrayList();
    ((List)localObject).add(b.a.a);
    ((List)localObject).add(b.a.b);
    d = new b(this, (List)localObject);
    localActionBar.a(2130903540);
    localObject = (Spinner)localActionBar.a();
    ((Spinner)localObject).setAdapter(d);
    ((Spinner)localObject).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (b.a)ActivityChooseFromGallery.b(ActivityChooseFromGallery.this).getItem(paramAnonymousInt);
        if (paramAnonymousAdapterView.equals(b.a.b))
        {
          AppData.a(EventIri.UploadGalleryChooseSource);
          ActivityChooseFromGallery.c(ActivityChooseFromGallery.this);
        }
        do
        {
          return;
          ActivityChooseFromGallery.a(ActivityChooseFromGallery.this, c);
        } while (ActivityChooseFromGallery.d(ActivityChooseFromGallery.this) == null);
        ActivityChooseFromGallery.d(ActivityChooseFromGallery.this).b(0, null, ActivityChooseFromGallery.this);
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
    localActionBar.b(false);
    localActionBar.c(true);
    localActionBar.a((View)localObject);
  }
  
  private boolean c(Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramBoolean = k.remove(paramUri);; paramBoolean = l.remove(paramUri))
    {
      if (paramBoolean)
      {
        e();
        f();
      }
      return paramBoolean;
    }
  }
  
  private void d()
  {
    Intent localIntent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    if (g == MediaStoreUtil.MediaType.PHOTO) {
      localIntent.setType("image/*");
    }
    for (;;)
    {
      startActivityForResult(localIntent, 1032);
      return;
      if (g == MediaStoreUtil.MediaType.VIDEO) {
        localIntent.setType("video/*");
      } else if (g == MediaStoreUtil.MediaType.PHOTO_AND_VIDEO) {
        localIntent.setType("image/*,video/*");
      }
    }
  }
  
  private void e()
  {
    f.setTitle(getString(2131165576, new Object[] { Integer.valueOf(h()) }));
    c.notifyDataSetChanged();
  }
  
  private void f()
  {
    boolean bool = true;
    MenuItem localMenuItem;
    if (a > 1)
    {
      localMenuItem = f;
      if (h() <= 0) {
        break label31;
      }
    }
    for (;;)
    {
      localMenuItem.setEnabled(bool);
      return;
      label31:
      bool = false;
    }
  }
  
  private void g()
  {
    k.clear();
    l.clear();
  }
  
  private int h()
  {
    return k.size() + l.size();
  }
  
  public l<Cursor> a(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      if (TextUtils.isEmpty(e)) {
        return MediaStoreUtil.a(this, g);
      }
      return MediaStoreUtil.a(this, g, e);
    }
    return MediaStoreUtil.b(this, g);
  }
  
  protected List<ContributionButtonAdapter.ContributionButton> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (!h) {}
    do
    {
      return localArrayList;
      if (g.hasPhotos()) {
        localArrayList.add(ContributionButtonAdapter.ContributionButton.TAKE_PHOTO);
      }
    } while ((!g.hasVideos()) || (!Features.video_capture.isEnabled()));
    localArrayList.add(ContributionButtonAdapter.ContributionButton.TAKE_VIDEO);
    return localArrayList;
  }
  
  public void a(l<Cursor> paraml)
  {
    switch (paraml.n())
    {
    default: 
      return;
    }
    c.changeCursor(null);
  }
  
  public void a(l<Cursor> paraml, Cursor paramCursor)
  {
    switch (paraml.n())
    {
    default: 
      return;
    case 0: 
      c.changeCursor(paramCursor);
      return;
    }
    a(paramCursor);
  }
  
  protected void a(List<b.a> paramList)
  {
    d.clear();
    d.add(b.a.a);
    d.a(paramList);
    d.add(b.a.b);
    d.notifyDataSetChanged();
  }
  
  public boolean a(Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean) {
      return k.contains(paramUri);
    }
    return l.contains(paramUri);
  }
  
  protected void b()
  {
    ContributionButtonAdapter localContributionButtonAdapter = new ContributionButtonAdapter(this, n, a());
    aj localaj = new aj();
    localaj.a(0, localContributionButtonAdapter);
    c = new a(this, o, null, g, this);
    c.a(a);
    localaj.a(1, c);
    b.setAdapter(localaj);
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
      a.a locala = o;
      paramIntent = paramIntent.getData();
      if (localMediaType == MediaStoreUtil.MediaType.PHOTO) {}
      for (boolean bool = true;; bool = false)
      {
        locala.a(paramIntent, bool);
        return;
      }
    } while (paramInt2 != -1);
    setResult(paramInt2, paramIntent);
    finish();
  }
  
  public void onBackPressed()
  {
    if (h() > 0)
    {
      a(new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityChooseFromGallery.a(ActivityChooseFromGallery.this);
        }
      });
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k.a(this, 250, new PermissionGroup[] { PermissionGroup.STORAGE });
    setContentView(2130903082);
    Intent localIntent = getIntent();
    g = ((MediaStoreUtil.MediaType)com.yelp.android.util.d.a(localIntent, "extra_media_type", MediaStoreUtil.MediaType.class, MediaStoreUtil.MediaType.PHOTO));
    h = localIntent.getBooleanExtra("extra_show_contribution_buttons", false);
    i = localIntent.getStringExtra("extra_business_id");
    j = localIntent.getIntExtra("CameraId", -1);
    if (h) {}
    for (a = getResources().getInteger(2131492899);; a = 1)
    {
      b = ((GridView)findViewById(16908298));
      b();
      c();
      AppData.b().f().e(1);
      if (k.a(this, PermissionGroup.STORAGE))
      {
        m = getSupportLoaderManager();
        m.a(0, null, this);
        m.a(1, null, this);
      }
      ((Toolbar)findViewById(2131690378)).setNavigationIcon(2130838971);
      if (paramBundle != null)
      {
        k = paramBundle.getParcelableArrayList("extra_photos_selected");
        l = paramBundle.getParcelableArrayList("extra_videos_selected");
      }
      if (k == null) {
        k = new ArrayList();
      }
      if (l == null) {
        l = new ArrayList();
      }
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if (a > 1)
    {
      getMenuInflater().inflate(2131755036, paramMenu);
      f = paramMenu.findItem(2131691015);
      f.setTitle(getString(2131165576, new Object[] { Integer.valueOf(h()) }));
      if (h() == 0) {
        f.setEnabled(false);
      }
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      onBackPressed();
      return true;
    }
    paramMenuItem = new Intent();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      localLinkedHashMap.put((Uri)localIterator.next(), Boolean.valueOf(true));
    }
    localIterator = l.iterator();
    while (localIterator.hasNext()) {
      localLinkedHashMap.put((Uri)localIterator.next(), Boolean.valueOf(false));
    }
    AppData.b().f().e(localLinkedHashMap.size());
    if (k.size() > 0) {
      paramMenuItem.putExtra("extra_file_path", e.a((Uri)k.get(0), getContentResolver()));
    }
    paramMenuItem.putExtra("extra_selected_media", localLinkedHashMap);
    com.yelp.android.util.d.a(paramMenuItem, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
    setResult(-1, paramMenuItem);
    finish();
    return true;
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.STORAGE)) && (!((Boolean)paramArrayOfString.get(PermissionGroup.STORAGE)).booleanValue())) {}
      while (paramArrayOfString.size() <= 0) {
        return;
      }
      recreate();
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("extra_photos_selected", k);
    paramBundle.putParcelableArrayList("extra_videos_selected", l);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */