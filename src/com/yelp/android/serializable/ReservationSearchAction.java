package com.yelp.android.serializable;

import android.content.Context;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.businesspage.cf;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Arrays;
import java.util.Date;

public class ReservationSearchAction
  extends _ReservationSearchAction
  implements SearchAction
{
  public static final JsonParser.DualCreator<ReservationSearchAction> CREATOR = new cm();
  private cf mHighlightedBusinessInfo;
  
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
            } while (isDisabled() != ((ReservationSearchAction)paramObject).isDisabled());
            bool1 = bool2;
          } while (getPartySize() != ((ReservationSearchAction)paramObject).getPartySize());
          if (getTime() == null) {
            break;
          }
          bool1 = bool2;
        } while (!getTime().equals(((ReservationSearchAction)paramObject).getTime()));
        if (getType() == null) {
          break label231;
        }
        bool1 = bool2;
      } while (!getType().equals(((ReservationSearchAction)paramObject).getType()));
      if (getText() == null) {
        break label240;
      }
      bool1 = bool2;
    } while (!getText().equals(((ReservationSearchAction)paramObject).getText()));
    label231:
    label240:
    while (((ReservationSearchAction)paramObject).getText() == null)
    {
      bool1 = bool2;
      if (!Arrays.equals(getTextColor(), ((ReservationSearchAction)paramObject).getTextColor())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(getDefaultColorTop(), ((ReservationSearchAction)paramObject).getDefaultColorTop())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(getDefaultColorBottom(), ((ReservationSearchAction)paramObject).getDefaultColorBottom())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(getSelectedColorTop(), ((ReservationSearchAction)paramObject).getSelectedColorTop())) {
        break;
      }
      bool1 = bool2;
      if (!Arrays.equals(getSelectedColorBottom(), ((ReservationSearchAction)paramObject).getSelectedColorBottom())) {
        break;
      }
      return Arrays.equals(getBorderColor(), ((ReservationSearchAction)paramObject).getBorderColor());
      if (((ReservationSearchAction)paramObject).getTime() == null) {
        break label84;
      }
      return false;
      if (((ReservationSearchAction)paramObject).getType() == null) {
        break label107;
      }
      return false;
    }
    return false;
  }
  
  public cf getBusinessListButton()
  {
    if (mHighlightedBusinessInfo == null) {
      mHighlightedBusinessInfo = new cl(this, this);
    }
    return mHighlightedBusinessInfo;
  }
  
  public BusinessSearchResult.SearchActionType getSearchActionType()
  {
    return BusinessSearchResult.SearchActionType.Reservation;
  }
  
  public void onPressed(Context paramContext, BusinessSearchResult paramBusinessSearchResult)
  {
    paramContext.startActivity(ActivityBusinessPage.a(paramContext, paramBusinessSearchResult));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationSearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */