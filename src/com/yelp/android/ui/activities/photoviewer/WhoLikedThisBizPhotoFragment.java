package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ab;
import com.yelp.android.appdata.webrequests.ai;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoFeedback;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.VideoFeedback;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.reviewpage.f;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.List;

public class WhoLikedThisBizPhotoFragment
  extends YelpListFragment
{
  private f a;
  private ApiRequest<Void, ?, ?> b;
  private PanelLoading c;
  private View d;
  private final ApiRequest.b<List<PhotoFeedback>> e = new WhoLikedThisBizPhotoFragment.2(this);
  private final ApiRequest.b<List<VideoFeedback>> f = new WhoLikedThisBizPhotoFragment.3(this);
  
  public static WhoLikedThisBizPhotoFragment a(Media paramMedia)
  {
    WhoLikedThisBizPhotoFragment localWhoLikedThisBizPhotoFragment = new WhoLikedThisBizPhotoFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra.media", paramMedia);
    localWhoLikedThisBizPhotoFragment.setArguments(localBundle);
    return localWhoLikedThisBizPhotoFragment;
  }
  
  private void a(ArrayList<DisplayableAsUserBadge> paramArrayList)
  {
    a.a(paramArrayList, true);
    if (a.isEmpty())
    {
      m().setEmptyView(d);
      YelpLog.remoteError(getActivity(), "Empty results for 'People Who Liked This Photo'");
    }
    m().f();
  }
  
  private void b(YelpException paramYelpException)
  {
    c.setVisibility(8);
    c.c();
    m().setEmptyView(d);
    YelpLog.remoteError(getActivity(), paramYelpException);
  }
  
  private void b(Media paramMedia)
  {
    a.clear();
    if ((b == null) || (!b.u())) {
      if (!paramMedia.a(Media.MediaType.VIDEO)) {
        break label83;
      }
    }
    label83:
    for (b = new ai(f, (Video)paramMedia);; b = new ab(e, (Photo)paramMedia))
    {
      b.f(new Void[0]);
      c.setVisibility(0);
      c.b();
      return;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof DisplayableAsUserBadge)) {
      startActivity(ActivityUserProfile.a(getActivity(), ((DisplayableAsUserBadge)paramListView).i()));
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a = f.b(paramBundle);
    if (a == null) {
      a = new f();
    }
    m().setEmptyView(c);
    m().setAdapter(a);
    if (!a.isEmpty())
    {
      a.notifyDataSetChanged();
      m().f();
      return;
    }
    paramBundle = (Media)getArguments().getParcelable("extra.media");
    if (paramBundle != null)
    {
      b(paramBundle);
      return;
    }
    YelpLog.remoteError(getActivity(), "Missing photo argument");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903261, paramViewGroup, false);
    paramLayoutInflater.setOnTouchListener(new WhoLikedThisBizPhotoFragment.1(this));
    c = ((PanelLoading)paramLayoutInflater.findViewById(2131690115));
    d = paramLayoutInflater.findViewById(2131689510);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (b != null)
    {
      b.a(true);
      b.a(null);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.WhoLikedThisBizPhotoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */