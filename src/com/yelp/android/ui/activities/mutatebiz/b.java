package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.util.Pair;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.NoProvidersException;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.q;
import java.io.IOException;
import java.util.List;

public class b
  extends q<Void, Void, String>
{
  private final Geocoder a;
  private final LocationService b;
  private final a d;
  
  public b(Context paramContext, LocationService paramLocationService, a parama)
  {
    a = new Geocoder(paramContext);
    b = paramLocationService;
    d = parama;
  }
  
  protected String a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = b.a(LocationService.Accuracies.FINE, LocationService.Recentness.MINUTE);
      if ((paramVarArgs == null) || (first == null)) {
        return null;
      }
    }
    catch (LocationService.NoProvidersException paramVarArgs)
    {
      return null;
    }
    paramVarArgs = (Location)first;
    try
    {
      Object localObject = a.getFromLocation(paramVarArgs.getLatitude(), paramVarArgs.getLongitude(), 1);
      if ((localObject != null) && (!((List)localObject).isEmpty()))
      {
        localObject = ((Address)((List)localObject).get(0)).getCountryCode();
        return (String)localObject;
      }
    }
    catch (IOException localIOException)
    {
      YelpLog.e("CountryCodeTask", "Ran into an error while geocoding " + paramVarArgs.toString(), localIOException);
    }
    return null;
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    if (paramString != null)
    {
      d.a(paramString);
      return;
    }
    d.a();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */