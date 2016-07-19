package com.yelp.android.ui.activities.favoriteslist;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.g.g;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.util.StringUtils;
import java.util.List;
import java.util.Map;

public class a
  extends BaseAdapter
{
  private a a;
  private FavoritesList b;
  
  public a(a parama)
  {
    a = parama;
  }
  
  public g<YelpBusiness, YelpBusinessReview> a(int paramInt)
  {
    return new g(b.i().get(paramInt), b.h().get(paramInt));
  }
  
  public void a(FavoritesList paramFavoritesList)
  {
    b = paramFavoritesList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (b == null) {
      return 0;
    }
    return b.i().size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    final Object localObject1 = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from((Context)localObject1).inflate(2130903224, paramViewGroup, false);
      localView.setTag(new b(localView));
    }
    paramView = (b)localView.getTag();
    paramViewGroup = (YelpBusiness)aa;
    t.a((Context)localObject1).a(paramViewGroup.au()).a(2130837691).b(2130837691).a(a);
    ar.a(b, paramViewGroup.P());
    h.setText(paramViewGroup.aq());
    g.setText(((Context)localObject1).getResources().getString(2131166842, new Object[] { Integer.valueOf(paramViewGroup.N()) }));
    final Object localObject2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.FavoritesListBusiness, ActivityFavoritesList.a(paramViewGroup.aD(), a.a(a.this).e()));
        localObject1.startActivity(ActivityBusinessPage.b(localObject1, paramViewGroup.aD()));
      }
    };
    i.setOnClickListener((View.OnClickListener)localObject2);
    a.setOnClickListener((View.OnClickListener)localObject2);
    localObject2 = (YelpBusinessReview)ab;
    ar.a(c, ((YelpBusinessReview)localObject2).C());
    TextView localTextView = e;
    if (paramViewGroup.G() == 0)
    {
      paramInt = 8;
      localTextView.setVisibility(paramInt);
      e.setText(StringUtils.a(localView.getContext(), 2131230725, paramViewGroup.G(), new String[0]));
      f.setText(((YelpBusinessReview)localObject2).e());
      f.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = ActivityFavoritesList.a(paramViewGroup.aD(), a.a(a.this).e());
          paramAnonymousView.put("review_id", localObject2.a());
          AppData.a(EventIri.FavoritesListReview, paramAnonymousView);
          localObject1.startActivity(ActivityReviewPager.a(localObject1, localObject2.a(), paramViewGroup.aD()));
        }
      });
      localObject1 = d;
      if (!paramViewGroup.U()) {
        break label326;
      }
    }
    label326:
    for (paramInt = 2130837715;; paramInt = 2130837713)
    {
      ((ImageView)localObject1).setImageResource(paramInt);
      d.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (a.b(a.this) != null) {
            a.b(a.this).a(paramViewGroup);
          }
        }
      });
      return localView;
      paramInt = 0;
      break;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(YelpBusiness paramYelpBusiness);
  }
  
  public static final class b
  {
    ImageView a;
    ImageView b;
    ImageView c;
    ImageView d;
    TextView e;
    TextView f;
    TextView g;
    TextView h;
    View i;
    
    public b(View paramView)
    {
      a = ((ImageView)paramView.findViewById(2131690208));
      b = ((ImageView)paramView.findViewById(2131690210));
      c = ((ImageView)paramView.findViewById(2131690213));
      d = ((ImageView)paramView.findViewById(2131690024));
      g = ((TextView)paramView.findViewById(2131690211));
      h = ((TextView)paramView.findViewById(2131689684));
      e = ((TextView)paramView.findViewById(2131690214));
      f = ((TextView)paramView.findViewById(2131690215));
      i = paramView.findViewById(2131690209);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */