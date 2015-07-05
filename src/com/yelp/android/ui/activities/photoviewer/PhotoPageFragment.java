package com.yelp.android.ui.activities.photoviewer;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.b;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.widgets.ScaleWebImageView;

public class PhotoPageFragment
  extends MediaBaseFragment
{
  private Photo b;
  private ScaleWebImageView c;
  private ImageView d;
  private ImageView e;
  private j g;
  private am h;
  
  public static PhotoPageFragment a(Photo paramPhoto)
  {
    PhotoPageFragment localPhotoPageFragment = new PhotoPageFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra.photo", paramPhoto);
    localPhotoPageFragment.setArguments(localBundle);
    return localPhotoPageFragment;
  }
  
  private void b()
  {
    i_();
    d.setVisibility(4);
    if (b != null) {
      if ((b.getLargestUrl() == null) || (!b.getLargestUrl().startsWith("file://"))) {
        break label143;
      }
    }
    label143:
    for (int i = 1;; i = 0)
    {
      if ((!TextUtils.isEmpty(b.getSmallUrl())) && (i == 0)) {
        g.a(b.getSmallUrl()).j().a(new ai(this, e));
      }
      if (!TextUtils.isEmpty(b.getLargestUrl())) {
        g.a(b.getLargestUrl()).j().a(new aj(this, c));
      }
      return;
    }
  }
  
  public Photo a()
  {
    return b;
  }
  
  public void a(am paramam)
  {
    h = paramam;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    g = h.a(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903225, paramViewGroup);
    e = ((ImageView)paramLayoutInflater.findViewById(2131493577));
    d = ((ImageView)paramLayoutInflater.findViewById(2131493576));
    c = ((ScaleWebImageView)paramLayoutInflater.findViewById(2131493062));
    c.setTapListener(new ag(this));
    b = ((Photo)getArguments().getParcelable("extra.photo"));
    b();
    paramLayoutInflater.setOnClickListener(new ah(this));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.PhotoPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */