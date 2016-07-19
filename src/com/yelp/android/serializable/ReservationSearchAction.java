package com.yelp.android.serializable;

import android.app.Activity;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.g.a;
import com.yelp.android.ui.activities.businesspage.g;
import com.yelp.android.ui.activities.reservations.ActivityReservationFlow;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;

public class ReservationSearchAction
  extends _ReservationSearchAction
  implements SearchAction
{
  public static final JsonParser.DualCreator<ReservationSearchAction> CREATOR = new ReservationSearchAction.2();
  private g m;
  
  public static Map<String, Object> a(BusinessSearchResult paramBusinessSearchResult, YelpBusiness paramYelpBusiness)
  {
    a locala = new a();
    String str = null;
    if (paramBusinessSearchResult != null) {
      str = paramBusinessSearchResult.g();
    }
    if (!StringUtils.d(str)) {
      locala.put("biz_dimension", str);
    }
    locala.put("id", paramYelpBusiness.aD());
    return locala;
  }
  
  public BusinessSearchResult.SearchActionType a()
  {
    return BusinessSearchResult.SearchActionType.Reservation;
  }
  
  public void a(Activity paramActivity, BusinessSearchResult paramBusinessSearchResult, String paramString)
  {
    paramString = a(paramBusinessSearchResult, paramBusinessSearchResult.a());
    if (o() != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramString.put("is_using_time_slot", Boolean.valueOf(bool));
      AppData.a(EventIri.SearchReservationOpen, paramString);
      paramString = "source_search_page";
      if (o() != null) {
        paramString = "source_vertical_search_page";
      }
      paramActivity.startActivity(ActivityReservationFlow.a(paramActivity, paramBusinessSearchResult, paramString, this));
      return;
    }
  }
  
  public g d()
  {
    if (m == null) {
      m = new ReservationSearchAction.1(this, this);
    }
    return m;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    label84:
    label107:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return bool1;
                  bool1 = bool2;
                } while (paramObject == null);
                bool1 = bool2;
              } while (getClass() != paramObject.getClass());
              paramObject = (ReservationSearchAction)paramObject;
              bool1 = bool2;
            } while (b() != ((ReservationSearchAction)paramObject).b());
            bool1 = bool2;
          } while (k() != ((ReservationSearchAction)paramObject).k());
          if (o() == null) {
            break;
          }
          bool1 = bool2;
        } while (!o().equals(((ReservationSearchAction)paramObject).o()));
        if (m() == null) {
          break label231;
        }
        bool1 = bool2;
      } while (!TextUtils.equals(m(), ((ReservationSearchAction)paramObject).m()));
      if (l() == null) {
        break label240;
      }
      bool1 = bool2;
    } while (!TextUtils.equals(l(), ((ReservationSearchAction)paramObject).l()));
    label231:
    label240:
    while (((ReservationSearchAction)paramObject).l() == null)
    {
      bool1 = bool2;
      if (!Arrays.equals(j(), ((ReservationSearchAction)paramObject).j())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(i(), ((ReservationSearchAction)paramObject).i())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(h(), ((ReservationSearchAction)paramObject).h())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(g(), ((ReservationSearchAction)paramObject).g())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(f(), ((ReservationSearchAction)paramObject).f())) {
        break;
      }
      return Arrays.equals(e(), ((ReservationSearchAction)paramObject).e());
      if (((ReservationSearchAction)paramObject).o() == null) {
        break label84;
      }
      return false;
      if (((ReservationSearchAction)paramObject).m() == null) {
        break label107;
      }
      return false;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationSearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */