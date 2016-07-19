package com.yelp.android.ui.activities.favoriteslist;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bw;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.FavoritesListShareFormatter;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ap.b;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.e;
import com.yelp.android.util.c;
import com.yelp.android.util.c.a;
import java.util.List;
import java.util.Map;

public class ActivityFavoritesList
  extends YelpActivity
  implements PanelError.a
{
  private ScrollToLoadListView a;
  private String b;
  private bw c;
  private a d;
  private View e;
  private boolean f;
  private YelpBusiness g;
  private c h;
  private FavoritesList i;
  private final ApiRequest.b<FavoritesList> j = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, FavoritesList paramAnonymousFavoritesList)
    {
      if (ActivityFavoritesList.c(ActivityFavoritesList.this) == null) {
        ActivityFavoritesList.a(ActivityFavoritesList.this, paramAnonymousFavoritesList);
      }
      for (;;)
      {
        disableLoading();
        clearError();
        ActivityFavoritesList.e(ActivityFavoritesList.this).setVisibility(0);
        if (!ActivityFavoritesList.f(ActivityFavoritesList.this)) {
          ActivityFavoritesList.g(ActivityFavoritesList.this);
        }
        ActivityFavoritesList.h(ActivityFavoritesList.this).a(ActivityFavoritesList.c(ActivityFavoritesList.this));
        ActivityFavoritesList.i(ActivityFavoritesList.this);
        return;
        ActivityFavoritesList.c(ActivityFavoritesList.this).a(paramAnonymousFavoritesList.i());
        ActivityFavoritesList.c(ActivityFavoritesList.this).b(paramAnonymousFavoritesList.h());
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityFavoritesList.e(ActivityFavoritesList.this).setVisibility(8);
      populateError(paramAnonymousYelpException);
    }
  };
  private final a.a k = new a.a()
  {
    public void a(YelpBusiness paramAnonymousYelpBusiness)
    {
      ActivityFavoritesList.a(ActivityFavoritesList.this, paramAnonymousYelpBusiness);
      Map localMap = ActivityFavoritesList.a(paramAnonymousYelpBusiness.aD(), ActivityFavoritesList.b(ActivityFavoritesList.this));
      AppData.a(EventIri.FavoritesListClickBookmark, localMap);
      if (ActivityFavoritesList.j(ActivityFavoritesList.this).U()) {}
      for (EventIri localEventIri = EventIri.FavoritesListRemoveBookmark;; localEventIri = EventIri.FavoritesListAddBookmark)
      {
        AppData.a(localEventIri, localMap);
        ActivityFavoritesList.k(ActivityFavoritesList.this).a(paramAnonymousYelpBusiness);
        return;
      }
    }
  };
  private final c.a l = new c.a()
  {
    public void a(boolean paramAnonymousBoolean)
    {
      ActivityFavoritesList.j(ActivityFavoritesList.this).a(paramAnonymousBoolean);
      ActivityFavoritesList.a(ActivityFavoritesList.this, null);
      ActivityFavoritesList.h(ActivityFavoritesList.this).notifyDataSetChanged();
    }
  };
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityFavoritesList.class);
    paramContext.putExtra("list_id", paramString);
    return paramContext;
  }
  
  public static Map<String, Object> a(String paramString1, String paramString2)
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("biz_id", paramString1);
    localArrayMap.put("list_id", paramString2);
    return localArrayMap;
  }
  
  private void a()
  {
    if (d.getCount() < i.a())
    {
      a.setOnLoadNeeded(new Runnable()
      {
        public void run()
        {
          if (ActivityFavoritesList.a(ActivityFavoritesList.this) == null)
          {
            ActivityFavoritesList.a(ActivityFavoritesList.this, new bw(ActivityFavoritesList.b(ActivityFavoritesList.this), ActivityFavoritesList.c(ActivityFavoritesList.this).i().size(), ActivityFavoritesList.d(ActivityFavoritesList.this)));
            ActivityFavoritesList.a(ActivityFavoritesList.this).f(new Void[0]);
          }
          while (!ActivityFavoritesList.a(ActivityFavoritesList.this).v()) {
            return;
          }
          ActivityFavoritesList.a(ActivityFavoritesList.this, ActivityFavoritesList.a(ActivityFavoritesList.this).b());
        }
      });
      return;
    }
    a.f();
  }
  
  private void b()
  {
    t.a(this).a(i.c()).a((ImageView)e.findViewById(2131689747));
    ((TextView)e.findViewById(2131689641)).setText(i.d());
    TextView localTextView = (TextView)e.findViewById(2131690330);
    localTextView.setVisibility(0);
    int m = i.a();
    Object localObject;
    if (m == 1)
    {
      localObject = getResources().getString(2131166292);
      localTextView.setText((CharSequence)localObject);
      localObject = e.findViewById(2131689859);
      new ap.b((View)localObject, false).a(i.g());
      ((View)localObject).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          String str = ActivityFavoritesList.c(ActivityFavoritesList.this).g().p();
          ArrayMap localArrayMap = new ArrayMap();
          localArrayMap.put("list_id", ActivityFavoritesList.b(ActivityFavoritesList.this));
          localArrayMap.put("user_id", str);
          AppData.a(EventIri.FavoritesListUser, localArrayMap);
          paramAnonymousView.getContext().startActivity(ActivityUserProfile.a(paramAnonymousView.getContext(), str));
        }
      });
      localObject = (TextView)e.findViewById(2131689861);
      if (!TextUtils.isEmpty(i.f())) {
        break label200;
      }
      ((TextView)localObject).setVisibility(8);
    }
    for (;;)
    {
      f = true;
      return;
      localObject = getResources().getString(2131166824, new Object[] { Integer.valueOf(m) });
      break;
      label200:
      ((TextView)localObject).setText(i.f());
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.FavoritesList;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new ArrayMap();
    parama.put("list_id", b);
    return parama;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    g = h.a(paramInt1, paramInt2, g);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903099);
    a = ((ScrollToLoadListView)findViewById(16908298));
    e = new e(a, 2130903100).a();
    b = getIntent().getStringExtra("list_id");
    d = new a(k);
    a.setAdapter(d);
    if (paramBundle != null)
    {
      g = ((YelpBusiness)paramBundle.getParcelable("saved_business_to_bookmark"));
      i = ((FavoritesList)paramBundle.getParcelable("saved_favorites_list"));
      d.a(i);
      b();
    }
    h = new c(this, l, g);
    if (i == null)
    {
      c = new bw(b, j);
      enableLoading();
      c.f(new Void[0]);
      return;
    }
    a();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755024, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    showShareSheet(new FavoritesListShareFormatter(i));
    AppData.a(EventIri.FavoritesListOpenShare, "list_id", b);
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("request_add_bookmark", h.a());
    freezeRequest("request_remove_bookmark", h.b());
    freezeRequest("request_favorites_list", c);
  }
  
  protected void onResume()
  {
    super.onResume();
    c = ((bw)thawRequest("request_favorites_list", c, j));
    thawRequest("request_add_bookmark", null, h.c());
    thawRequest("request_remove_bookmark", null, h.d());
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("saved_business_to_bookmark", g);
    paramBundle.putParcelable("saved_favorites_list", i);
  }
  
  public void q_()
  {
    c.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */