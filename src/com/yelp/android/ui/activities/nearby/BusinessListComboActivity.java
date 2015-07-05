package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import com.yelp.android.serializable.NearbyRow;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.e;
import com.yelp.android.ui.map.k;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BusinessListComboActivity
  extends ComboMapListActivity<YelpBusiness>
{
  protected ArrayList<List<YelpBusiness>> a;
  private ArrayList<String> c;
  private int d;
  
  public static Intent a(Context paramContext, NearbyRow paramNearbyRow)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramNearbyRow);
    return a(paramContext, localArrayList, 0);
  }
  
  public static Intent a(Context paramContext, ArrayList<NearbyRow> paramArrayList, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      NearbyRow localNearbyRow = (NearbyRow)paramArrayList.next();
      localArrayList1.add((ArrayList)localNearbyRow.getBusinessListForResults());
      localArrayList2.add(localNearbyRow.getHeader());
    }
    return a(paramContext, localArrayList1, localArrayList2, paramInt);
  }
  
  public static Intent a(Context paramContext, ArrayList<ArrayList<YelpBusiness>> paramArrayList, ArrayList<String> paramArrayList1, int paramInt)
  {
    paramContext = new Intent(paramContext, BusinessListComboActivity.class);
    paramContext.putStringArrayListExtra("titles", paramArrayList1);
    paramContext.putExtra("business_list", paramArrayList);
    paramContext.putExtra("start_position", paramInt);
    return paramContext;
  }
  
  public e<YelpBusiness> a()
  {
    return new b(this);
  }
  
  protected au<YelpBusiness> a(int paramInt)
  {
    BusinessAdapter localBusinessAdapter = new BusinessAdapter(this);
    localBusinessAdapter.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.NUMBERED, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.DISTANCE });
    localBusinessAdapter.a((List)a.get(paramInt));
    return localBusinessAdapter;
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    startActivity(ActivityBusinessPage.b(this, paramYelpBusiness));
  }
  
  public void a(ComboListFragment<YelpBusiness> paramComboListFragment)
  {
    paramComboListFragment.a((String)c.get(paramComboListFragment.d()));
    paramComboListFragment.a(true);
  }
  
  public void a(ComboListFragment<YelpBusiness> paramComboListFragment, Object paramObject)
  {
    if ((paramObject instanceof YelpBusiness)) {
      startActivity(ActivityBusinessPage.b(this, (YelpBusiness)paramObject));
    }
  }
  
  protected void b(int paramInt)
  {
    super.b(paramInt);
    j().a((List)a.get(paramInt), new k(this, 0));
  }
  
  public void b(YelpBusiness paramYelpBusiness) {}
  
  public void c()
  {
    j().a((List)a.get(d), new k(this, 0));
  }
  
  protected int g()
  {
    return a.size();
  }
  
  public void h()
  {
    k().a(d, false);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a = ((ArrayList)getIntent().getSerializableExtra("business_list"));
    c = ((ArrayList)getIntent().getSerializableExtra("titles"));
    d = getIntent().getIntExtra("start_position", 0);
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.BusinessListComboActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */