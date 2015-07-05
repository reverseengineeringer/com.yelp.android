package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.location.Location;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.db;
import com.yelp.android.appdata.webrequests.fy;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.b;
import java.util.List;

public class LocationPreference<T>
  extends PreferenceView
  implements TextWatcher
{
  db<T> a;
  private final m<List<T>> d = new u(this);
  
  public LocationPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LocationPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772133);
  }
  
  public LocationPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.PreferenceView, paramInt, paramInt);
    setChecked(paramContext.getBoolean(12, true));
    paramContext.recycle();
    b.setTextColor(getResources().getColor(17170444));
    b.addTextChangedListener(this);
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable.toString().length() < 2) {
      return;
    }
    if (a != null)
    {
      a.cancel(true);
      a.setCallback(null);
    }
    Location localLocation2 = AppData.b().n().c();
    String str = paramEditable.toString();
    Location localLocation1 = localLocation2;
    if (localLocation2 == null) {
      localLocation1 = fy.a;
    }
    a = new db(str, localLocation1, d);
    a.execute(new String[] { paramEditable.toString() });
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.LocationPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */