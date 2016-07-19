package com.google.android.gms.location.places.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.ba.a.c;
import com.yelp.android.ba.a.d;

public class SupportPlaceAutocompleteFragment
  extends Fragment
{
  private View a;
  private View b;
  private EditText c;
  private LatLngBounds d;
  private AutocompleteFilter e;
  private b f;
  
  private void a()
  {
    int j = 0;
    View localView;
    if (!c.getText().toString().isEmpty())
    {
      i = 1;
      localView = b;
      if (i == 0) {
        break label42;
      }
    }
    label42:
    for (int i = j;; i = 8)
    {
      localView.setVisibility(i);
      return;
      i = 0;
      break;
    }
  }
  
  private void b()
  {
    try
    {
      startActivityForResult(new a.a(2).a(d).a(e).a(c.getText().toString()).a(1).a(getActivity()), 1);
      i = -1;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      for (;;)
      {
        i = localGooglePlayServicesRepairableException.getConnectionStatusCode();
        Log.e("Places", "Could not open autocomplete activity", localGooglePlayServicesRepairableException);
      }
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      for (;;)
      {
        int i = errorCode;
        Log.e("Places", "Could not open autocomplete activity", localGooglePlayServicesNotAvailableException);
      }
    }
    if (i != -1) {
      GoogleApiAvailability.getInstance().showErrorDialogFragment(getActivity(), i, 2);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    c.setText(paramCharSequence);
    a();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object localObject;
    if (paramInt1 == 1)
    {
      if (paramInt2 != -1) {
        break label62;
      }
      localObject = a.a(getActivity(), paramIntent);
      if (f != null) {
        f.a((com.google.android.gms.location.places.a)localObject);
      }
      a(((com.google.android.gms.location.places.a)localObject).a().toString());
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      label62:
      if (paramInt2 == 2)
      {
        localObject = a.b(getActivity(), paramIntent);
        if (f != null) {
          f.a((Status)localObject);
        }
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(a.d.place_autocomplete_fragment, paramViewGroup, false);
    a = paramLayoutInflater.findViewById(a.c.place_autocomplete_search_button);
    b = paramLayoutInflater.findViewById(a.c.place_autocomplete_clear_button);
    c = ((EditText)paramLayoutInflater.findViewById(a.c.place_autocomplete_search_input));
    paramViewGroup = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SupportPlaceAutocompleteFragment.a(SupportPlaceAutocompleteFragment.this);
      }
    };
    a.setOnClickListener(paramViewGroup);
    c.setOnClickListener(paramViewGroup);
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a("");
      }
    });
    a();
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    a = null;
    b = null;
    c = null;
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.ui.SupportPlaceAutocompleteFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */