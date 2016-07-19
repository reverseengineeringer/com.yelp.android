package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

public class ChooseDealOption
  extends YelpActivity
{
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal)
  {
    paramContext = new Intent(paramContext, ChooseDealOption.class);
    paramContext.putExtra("DEAL.xtra", paramYelpDeal);
    paramContext.putExtra("BUSINESS.xtra", paramYelpBusiness);
    paramContext.addFlags(65536);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealOptions;
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    final Object localObject1 = getIntent();
    paramBundle = (YelpDeal)((Intent)localObject1).getParcelableExtra("DEAL.xtra");
    localObject1 = (YelpBusiness)((Intent)localObject1).getParcelableExtra("BUSINESS.xtra");
    Object localObject4 = paramBundle.y();
    if (((List)localObject4).size() == 1)
    {
      startActivity(PurchaseDealsForm.a(this, (YelpBusiness)localObject1, paramBundle, 0));
      finish();
      return;
    }
    setContentView(2130903080);
    Object localObject2 = new String[2];
    localObject2[0] = "Title";
    localObject2[1] = "Subtitle";
    Object localObject3 = new ArrayList();
    localObject4 = ((List)localObject4).iterator();
    while (((Iterator)localObject4).hasNext())
    {
      YelpDealOption localYelpDealOption = (YelpDealOption)((Iterator)localObject4).next();
      TreeMap localTreeMap = new TreeMap();
      localTreeMap.put(localObject2[0], localYelpDealOption.g());
      localTreeMap.put(localObject2[1], localYelpDealOption.f());
      ((List)localObject3).add(localTreeMap);
    }
    localObject2 = new SimpleAdapter(this, (List)localObject3, 2130903176, (String[])localObject2, new int[] { 2131689641, 2131689711 });
    localObject3 = (ListView)findViewById(2131689771);
    ((ListView)localObject3).setAdapter((ListAdapter)localObject2);
    ((ListView)localObject3).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        finish();
        startActivity(PurchaseDealsForm.a(ChooseDealOption.this, localObject1, paramBundle, paramAnonymousInt));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ChooseDealOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */