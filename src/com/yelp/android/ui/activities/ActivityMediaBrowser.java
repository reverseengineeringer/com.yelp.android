package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.AddBusinessPhoto;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

public class ActivityMediaBrowser
  extends YelpActivity
{
  private GridView a;
  private cv b;
  private YelpBusiness c;
  private ArrayList<Media> d;
  private TreeSet<String> e;
  private MediaRequest f;
  private int g = 0;
  private final AdapterView.OnItemClickListener h = new ct(this);
  private final m<dm> i = new cu(this);
  
  public static Intent a(Context paramContext, CharSequence paramCharSequence, YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, List<? extends Media> paramList, boolean paramBoolean)
  {
    YelpActivity.IntentData.setData(paramList);
    paramContext = new Intent(paramContext, ActivityMediaBrowser.class);
    paramContext.putExtra("extra.media_request", paramMediaRequest);
    paramContext.putExtra("extra.state_title", paramCharSequence);
    paramContext.putExtra("extra.show_likes", paramBoolean);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void a()
  {
    Intent localIntent = getIntent();
    setTitle(localIntent.getCharSequenceExtra("extra.state_title"));
    Object localObject = (List)YelpActivity.IntentData.popData();
    if (localObject != null)
    {
      d = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Media localMedia = (Media)((Iterator)localObject).next();
        if (!e.contains(localMedia.getId())) {
          d.add(localMedia);
        }
      }
      e.clear();
    }
    f = ((MediaRequest)localIntent.getParcelableExtra("extra.media_request"));
    if (f != null) {
      f = f.resetWithOffset(f.countMedia(d));
    }
    c = ((YelpBusiness)localIntent.getParcelableExtra("extra.business"));
    b = new cv(this, this, d, localIntent.getBooleanExtra("extra.show_likes", false));
    a.setAdapter(b);
    a.setOnItemClickListener(h);
    a.setOnScrollListener(new cz(this, null));
  }
  
  private void a(Media paramMedia)
  {
    if (d.remove(paramMedia))
    {
      b.notifyDataSetChanged();
      e.add(paramMedia.getId());
    }
  }
  
  protected void a(Context paramContext, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt)
  {
    if (c == null) {}
    for (String str = null;; str = c.getId())
    {
      startActivityForResult(ActivityMediaViewer.a(paramContext, str, paramMediaRequest, paramList, paramInt), 1028);
      return;
    }
  }
  
  protected void a(Media paramMedia, boolean paramBoolean)
  {
    if ((paramBoolean) || (d.isEmpty())) {
      d.add(0, paramMedia);
    }
    for (;;)
    {
      b.notifyDataSetChanged();
      return;
      d.add(1, paramMedia);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessPhotosGrid;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = Collections.emptyMap();
    if (c != null) {
      paramb = Collections.singletonMap("id", c.getId());
    }
    return paramb;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    if (paramIntent != null) {
      getIntent().putExtra("extra.media_request", ActivityMediaViewer.a(paramIntent));
    }
    a();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
    a = ((GridView)findViewById(2131493244));
    a.setOnScrollListener(new cz(this, null));
    d = new ArrayList();
    e = new TreeSet();
    a();
    if (paramBundle != null)
    {
      f = ((MediaRequest)paramBundle.getParcelable("extra.media_request"));
      ArrayList localArrayList = paramBundle.getParcelableArrayList("media_list");
      d.clear();
      d.addAll(localArrayList);
      e = ((TreeSet)paramBundle.getSerializable("deleted_media_set"));
      g = paramBundle.getInt("previous_scroll_position");
    }
    registerDirtyEventReceiver("com.yelp.android.media.delete", new cr(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755046, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131493896)
    {
      AppData.a(EventIri.BusinessMorePhotosAddPhoto);
      startActivity(ActivityLogin.a(this, 2131166778, 2131166034, AddBusinessPhoto.a(this, c)));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    g = a.getFirstVisiblePosition();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    g = paramBundle.getInt("previous_scroll_position", 0);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((d.isEmpty()) && (f != null) && (!f.isFetching()))
    {
      f.setCallback(i);
      if ((f.isCompleted()) || (f.isCancelled())) {
        break label116;
      }
      f.execute(new Void[0]);
    }
    for (;;)
    {
      showLoadingDialog();
      a.clearFocus();
      a.postDelayed(new cs(this), 100L);
      a.setSelection(g);
      return;
      label116:
      f = f.retry();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("media_request", f);
    paramBundle.putParcelableArrayList("media_list", d);
    paramBundle.putSerializable("deleted_media_set", e);
    paramBundle.putInt("previous_scroll_position", a.getFirstVisiblePosition());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMediaBrowser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */