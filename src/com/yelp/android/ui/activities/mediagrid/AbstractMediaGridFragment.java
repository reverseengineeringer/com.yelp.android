package com.yelp.android.ui.activities.mediagrid;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpFragment;
import java.util.ArrayList;

public abstract class AbstractMediaGridFragment
  extends YelpFragment
  implements MediaBrowserGridView.a
{
  protected YelpBusiness a;
  protected MediaRequest b;
  protected MediaBrowserGridView c;
  protected a d;
  protected int e = Integer.MAX_VALUE;
  protected boolean f;
  private a g;
  private View i;
  private boolean j;
  private final AdapterView.OnItemClickListener k = new AbstractMediaGridFragment.1(this);
  private final View.OnClickListener l = new AbstractMediaGridFragment.2(this);
  
  protected static Bundle a(AbstractMediaGridFragment paramAbstractMediaGridFragment, YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, ArrayList<Media> paramArrayList, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("business", paramYelpBusiness);
    localBundle.putParcelable("media_request", paramMediaRequest);
    localBundle.putParcelableArrayList("media_list", paramArrayList);
    localBundle.putBoolean("show_likes", paramBoolean);
    paramAbstractMediaGridFragment.setArguments(localBundle);
    return localBundle;
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    i.setVisibility(8);
  }
  
  protected abstract boolean a();
  
  protected abstract ApiRequest.b<MediaPayload> b();
  
  protected void b(View paramView)
  {
    super.b(paramView);
    i.setVisibility(0);
  }
  
  public void c()
  {
    if (a())
    {
      b.a(b());
      if (b.v()) {
        b = b.d(20);
      }
    }
    else
    {
      return;
    }
    if (b.l())
    {
      b.f();
      return;
    }
    b.f(new Void[0]);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Object localObject;
    if (paramBundle != null)
    {
      localObject = paramBundle.getParcelableArrayList("media_list");
      b = ((MediaRequest)paramBundle.getParcelable("media_request"));
      a = ((YelpBusiness)paramBundle.getParcelable("business"));
      e = paramBundle.getInt("total_media");
      j = paramBundle.getBoolean("show_likes");
      f = paramBundle.getBoolean("show_add_media");
      paramBundle = (Bundle)localObject;
    }
    for (;;)
    {
      setHasOptionsMenu(true);
      d = new a(paramBundle, l);
      d.a(j);
      d.b(f);
      c.setAdapter(d);
      c.setOnItemClickListener(k);
      c.setScrollToLoadCallback(this);
      if (paramBundle != null) {
        break;
      }
      throw new IllegalStateException("The list of media must not be null.");
      localObject = getArguments();
      a = ((YelpBusiness)((Bundle)localObject).getParcelable("business"));
      b = ((MediaRequest)((Bundle)localObject).getParcelable("media_request"));
      paramBundle = ((Bundle)localObject).getParcelableArrayList("media_list");
      j = ((Bundle)localObject).getBoolean("show_likes");
    }
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    try
    {
      g = ((a)paramContext);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramContext.toString() + " must implement MediaGridFragmentListener");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903251, paramViewGroup, false);
    c = ((MediaBrowserGridView)paramLayoutInflater.findViewById(2131690284));
    i = paramLayoutInflater.findViewById(2131690281);
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691046)
    {
      g.a(a, true);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    a("media_request", b);
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((MediaRequest)a("media_request", b, b()));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("business", a);
    paramBundle.putParcelableArrayList("media_list", d.b());
    paramBundle.putParcelable("media_request", b);
    paramBundle.putInt("total_media", e);
    paramBundle.putBoolean("show_likes", j);
    paramBundle.putBoolean("show_add_media", f);
  }
  
  public static abstract interface a
  {
    public abstract void a(YelpBusiness paramYelpBusiness, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt1, int paramInt2);
    
    public abstract void a(YelpBusiness paramYelpBusiness, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.AbstractMediaGridFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */