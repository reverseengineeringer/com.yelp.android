package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.g.a;
import com.yelp.android.ui.activities.AddNewBizDialog;
import java.util.Map;

class SearchBusinessesByList$9
  implements View.OnClickListener
{
  SearchBusinessesByList$9(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.SearchAddBusiness);
    a locala = new a();
    locala.put("claim_popup_add_business_biz_search_page_experiment", ((TwoBucketExperiment.Cohort)e.r.b()).name());
    AppData.a(EventIri.SearchViewPopupAddBusiness, locala);
    if (TwoBucketExperiment.Cohort.enabled.equals(e.r.b()))
    {
      AddNewBizDialog.a().show(a.getSupportFragmentManager(), null);
      return;
    }
    a.a(paramView.getContext());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */