package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import com.yelp.android.appdata.Features;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.fa;
import com.yelp.android.ui.activities.support.YelpFragment;

public class PhotoPageAddMediaFragment
  extends YelpFragment
{
  private final View.OnClickListener a = new af(this);
  
  public static PhotoPageAddMediaFragment a(YelpBusiness paramYelpBusiness)
  {
    PhotoPageAddMediaFragment localPhotoPageAddMediaFragment = new PhotoPageAddMediaFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra.business", paramYelpBusiness);
    localPhotoPageAddMediaFragment.setArguments(localBundle);
    return localPhotoPageAddMediaFragment;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903392, paramViewGroup);
    ((GridView)paramViewGroup.findViewById(2131493983)).setAdapter(new fa(paramViewGroup.getContext()));
    if (!Features.video_capture.isEnabled()) {
      ((TextView)paramViewGroup.findViewById(2131493985)).setText(2131165338);
    }
    paramViewGroup.findViewById(2131493985).setOnClickListener(a);
    ((TextView)paramViewGroup.findViewById(2131493984)).setText(getString(2131166692, new Object[] { ((YelpBusiness)getArguments().getParcelable("extra.business")).getDisplayName() }));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.PhotoPageAddMediaFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */