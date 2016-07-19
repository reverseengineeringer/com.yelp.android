package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;

public class a$a
  extends c.a
{
  public a$a(int paramInt)
  {
    super("com.google.android.gms.location.places.ui.AUTOCOMPLETE");
    a.putExtra("gmscore_client_jar_version", GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    a.putExtra("mode", paramInt);
    a.putExtra("origin", 2);
  }
  
  public Intent a(Activity paramActivity)
    throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException
  {
    return super.a(paramActivity);
  }
  
  public a a(int paramInt)
  {
    a.putExtra("origin", paramInt);
    return this;
  }
  
  public a a(AutocompleteFilter paramAutocompleteFilter)
  {
    if (paramAutocompleteFilter != null)
    {
      a.putExtra("filter", paramAutocompleteFilter);
      return this;
    }
    a.removeExtra("filter");
    return this;
  }
  
  public a a(LatLngBounds paramLatLngBounds)
  {
    if (paramLatLngBounds != null)
    {
      a.putExtra("bounds", paramLatLngBounds);
      return this;
    }
    a.removeExtra("bounds");
    return this;
  }
  
  public a a(String paramString)
  {
    if (paramString != null)
    {
      a.putExtra("initial_query", paramString);
      return this;
    }
    a.removeExtra("initial_query");
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.ui.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */