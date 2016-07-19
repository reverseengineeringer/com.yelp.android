package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.ui.util.g;
import java.util.List;

public class ContributionButtonAdapter
  extends ArrayAdapter<ContributionButton>
  implements g
{
  private LayoutInflater a;
  private Resources b;
  private a c;
  
  protected ContributionButtonAdapter(Context paramContext, a parama, List<ContributionButton> paramList)
  {
    super(paramContext, 0, paramList);
    a = LayoutInflater.from(paramContext);
    b = paramContext.getResources();
    c = parama;
  }
  
  protected View a(int paramInt, ViewGroup paramViewGroup)
  {
    paramViewGroup = a.inflate(2130903265, paramViewGroup, false);
    paramViewGroup.setTag(new b(paramViewGroup));
    return paramViewGroup;
  }
  
  protected void a(View paramView, int paramInt)
  {
    paramView = (b)paramView.getTag();
    final ContributionButton localContributionButton = (ContributionButton)getItem(paramInt);
    a.setText(b.getString(mTextId));
    a.setCompoundDrawablesWithIntrinsicBounds(null, b.getDrawable(mPictureId), null, null);
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ContributionButtonAdapter.a(ContributionButtonAdapter.this).a(localContributionButton);
      }
    });
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup);
    }
    a(localView, paramInt);
    return localView;
  }
  
  public static enum ContributionButton
  {
    TAKE_PHOTO(2131166641, 2130837798),  TAKE_VIDEO(2131166642, 2130838955);
    
    int mPictureId;
    int mTextId;
    
    private ContributionButton(int paramInt1, int paramInt2)
    {
      mTextId = paramInt1;
      mPictureId = paramInt2;
    }
  }
  
  protected static abstract interface a
  {
    public abstract void a(ContributionButtonAdapter.ContributionButton paramContributionButton);
  }
  
  private static class b
  {
    TextView a;
    RelativeLayout b;
    
    public b(View paramView)
    {
      a = ((TextView)paramView.findViewById(2131690320));
      b = ((RelativeLayout)paramView.findViewById(2131690319));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ContributionButtonAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */