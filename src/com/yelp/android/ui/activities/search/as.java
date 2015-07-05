package com.yelp.android.ui.activities.search;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.AsyncTask;
import android.widget.EditText;
import com.yelp.android.ui.util.bj;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.util.List;

class as
  extends AsyncTask<String, Void, Location>
{
  private final Geocoder b;
  
  public as(SearchOverlay paramSearchOverlay, Geocoder paramGeocoder)
  {
    b = paramGeocoder;
  }
  
  protected Location a(String... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length != 0)) {
      try
      {
        paramVarArgs = b.getFromLocationName(paramVarArgs[0], 1);
        if ((paramVarArgs != null) && (paramVarArgs.size() > 0))
        {
          paramVarArgs = (Address)paramVarArgs.get(0);
          if (paramVarArgs != null)
          {
            Location localLocation = new Location("Geocoder");
            localLocation.setLatitude(paramVarArgs.getLatitude());
            localLocation.setLongitude(paramVarArgs.getLongitude());
            return localLocation;
          }
        }
      }
      catch (IOException paramVarArgs)
      {
        YelpLog.w("SearchOverlay", "The network is unavailable for Geocoder.");
      }
    }
    return null;
  }
  
  protected void a(Location paramLocation)
  {
    if (paramLocation != null)
    {
      SearchOverlay.n(a).a(paramLocation);
      if (SearchOverlay.a(a) != null) {
        SearchOverlay.n(a).filter(SearchOverlay.a(a).getText().toString());
      }
    }
    if (SearchOverlay.a(a) != null)
    {
      SearchOverlay.n(a).a(SearchOverlay.b(a).getText().toString());
      SearchOverlay.n(a).filter(SearchOverlay.a(a).getText().toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */