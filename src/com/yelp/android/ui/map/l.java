package com.yelp.android.ui.map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.model.Marker;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.cp;
import com.yelp.android.webimageview.ImageLoader;

public class l
  implements GoogleMap.OnInfoWindowClickListener, e<YelpBusiness>
{
  private final Activity a;
  private final YelpBusiness b;
  private Marker c;
  private f<YelpBusiness> d;
  private Bitmap e;
  private p f = new n(this);
  
  public l(Activity paramActivity, YelpBusiness paramYelpBusiness)
  {
    a = paramActivity;
    b = paramYelpBusiness;
    e = null;
  }
  
  public YelpBusiness a(Marker paramMarker)
  {
    return b;
  }
  
  public void a() {}
  
  public void a(GoogleMap paramGoogleMap, GoogleMap.OnMapClickListener paramOnMapClickListener)
  {
    paramGoogleMap.setOnMapClickListener(new m(this, paramOnMapClickListener));
  }
  
  public void a(YelpBusiness paramYelpBusiness, Marker paramMarker)
  {
    if (c == null)
    {
      c = paramMarker;
      c.setAlpha(0.0F);
      c.setInfoWindowAnchor(0.5F, 1.0F);
      c.showInfoWindow();
    }
  }
  
  public void a(f<YelpBusiness> paramf)
  {
    d = paramf;
  }
  
  @SuppressLint({"InflateParams"})
  public View getInfoContents(Marker paramMarker)
  {
    paramMarker = new RelativeLayout(a);
    LayoutInflater.from(a).inflate(2130903301, paramMarker, true);
    paramMarker.setLayoutParams(new RelativeLayout.LayoutParams(a.getResources().getDimensionPixelSize(2131427479), -2));
    int i = cp.a(a, 2130772040);
    paramMarker.setPadding(i, i, i, i);
    ImageView localImageView = (ImageView)paramMarker.findViewById(2131493648);
    TextView localTextView1 = (TextView)paramMarker.findViewById(2131493020);
    TextView localTextView2 = (TextView)paramMarker.findViewById(2131493676);
    localTextView1.setText(b.getDisplayName());
    i = b.getReviewCount();
    localTextView2.setText(a.getResources().getQuantityString(2131623970, i, new Object[] { Integer.valueOf(i) }));
    cp.a(localTextView2, b.getAvgRating());
    if (e == null)
    {
      ImageLoader.start(b.getPhotoUrl(), new o(null, f), false);
      return paramMarker;
    }
    localImageView.setImageBitmap(e);
    return paramMarker;
  }
  
  public View getInfoWindow(Marker paramMarker)
  {
    return null;
  }
  
  public void onInfoWindowClick(Marker paramMarker)
  {
    if (d != null) {
      d.a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */