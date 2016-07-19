package com.yelp.android.ui.panels;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.ui.util.av;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class YourNextReviewAwaitsFragment
  extends Fragment
{
  private ArrayList<ReviewSuggestion> a;
  private a b;
  private List<g> c;
  private int d = -1;
  private final g.a e = new YourNextReviewAwaitsFragment.3(this);
  
  public static YourNextReviewAwaitsFragment a(ArrayList<ReviewSuggestion> paramArrayList)
  {
    YourNextReviewAwaitsFragment localYourNextReviewAwaitsFragment = new YourNextReviewAwaitsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("saved_suggestion_list", paramArrayList);
    localYourNextReviewAwaitsFragment.setArguments(localBundle);
    return localYourNextReviewAwaitsFragment;
  }
  
  private void a(ReviewSuggestion paramReviewSuggestion, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    paramReviewSuggestion = new g(getActivity(), paramReviewSuggestion, e, IriSource.PostReviewYNRA);
    c.add(paramReviewSuggestion);
    paramViewGroup.addView(paramReviewSuggestion);
    if (paramBoolean)
    {
      paramReviewSuggestion.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
      av.a(paramReviewSuggestion, av.c, new YourNextReviewAwaitsFragment.2(this, paramReviewSuggestion));
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      b = ((a)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement YNRAListener");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getParcelableArrayList("saved_suggestion_list");
      d = paramBundle.getInt("saved_num_suggestions");
    }
    for (;;)
    {
      c = new ArrayList(a.size());
      return;
      if (getArguments() != null) {
        a = getArguments().getParcelableArrayList("saved_suggestion_list");
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (LinearLayout)paramLayoutInflater.inflate(2130903489, paramViewGroup, false);
    paramViewGroup = (LinearLayout)paramLayoutInflater.findViewById(2131690820);
    paramBundle = (Button)paramLayoutInflater.findViewById(2131690821);
    paramBundle.setOnClickListener(new YourNextReviewAwaitsFragment.1(this, paramViewGroup, paramBundle));
    if (d == -1) {}
    for (int i = Math.min(a.size(), 3);; i = d)
    {
      int j = 0;
      while (j < i)
      {
        a((ReviewSuggestion)a.get(j), paramViewGroup, false);
        j += 1;
      }
    }
    if (a.size() > i) {
      paramBundle.setVisibility(0);
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((g)localIterator.next()).setCallback(null);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("saved_suggestion_list", a);
    paramBundle.putInt("saved_num_suggestions", c.size());
  }
  
  public static abstract interface a
  {
    public abstract void f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.YourNextReviewAwaitsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */