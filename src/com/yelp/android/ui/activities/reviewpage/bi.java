package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.au;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

public class bi
  extends au<YelpBusinessReview>
{
  private PanelReviewTranslate a;
  private final ak b = new ak();
  private PanelReviewTranslate.TranslateState c = PanelReviewTranslate.TranslateState.ORIGINAL;
  private final aj d = new bj(this);
  
  private boolean d()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (c() != null)
    {
      bool1 = bool2;
      if (!AppData.b().g().h().equals(b.a(0).getLocale())) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public YelpBusinessReview a(int paramInt)
  {
    if (d())
    {
      if (paramInt == 0) {
        return null;
      }
      return b.a(paramInt - 1);
    }
    return b.a(paramInt);
  }
  
  public List<YelpBusinessReview> a()
  {
    return b.a();
  }
  
  public void a(View paramView1, View paramView2)
  {
    a = ((PanelReviewTranslate)paramView2);
    getView(0, paramView1, (ViewGroup)paramView1.getRootView());
    if (d())
    {
      a.setOnTranslationStateChangedCb(d);
      a.setVisibility(0);
      getView(1, paramView1, (ViewGroup)paramView1.getRootView());
      return;
    }
    a.setVisibility(8);
  }
  
  public void a(YelpException paramYelpException)
  {
    b.a(paramYelpException);
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    b.a(paramYelpBusinessReview);
    if (a != null) {
      a.a(paramYelpBusinessReview);
    }
    notifyDataSetChanged();
  }
  
  public void a(PanelReviewTranslate.TranslateState paramTranslateState)
  {
    if (a != null)
    {
      a.setState(paramTranslateState);
      return;
    }
    c = paramTranslateState;
  }
  
  public void a(String paramString)
  {
    if (a != null) {
      a.a(paramString);
    }
  }
  
  public void a(Collection<? extends YelpBusinessReview> paramCollection)
  {
    b.a(paramCollection);
    if (a != null) {
      a.a(paramCollection);
    }
  }
  
  public void a(List<YelpBusinessReview> paramList)
  {
    b.a(paramList);
    if (a != null) {
      a.setContents(paramList);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b.a(paramBoolean);
  }
  
  public boolean areAllItemsEnabled()
  {
    return b.areAllItemsEnabled();
  }
  
  public boolean b()
  {
    if (a != null) {}
    for (PanelReviewTranslate.TranslateState localTranslateState = a.getState(); localTranslateState != PanelReviewTranslate.TranslateState.ORIGINAL; localTranslateState = c) {
      return true;
    }
    return false;
  }
  
  public Locale c()
  {
    if (b.getCount() != 0) {
      return b.a(0).getLocale();
    }
    return null;
  }
  
  public void clear()
  {
    b.clear();
  }
  
  public int getCount()
  {
    if (d()) {
      return b.getCount() + 1;
    }
    return b.getCount();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (d())
    {
      if (paramInt == 0) {
        return 2;
      }
      return b.getItemViewType(paramInt - 1);
    }
    return b.getItemViewType(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!d()) {
      return b.getView(paramInt, paramView, paramViewGroup);
    }
    if (paramInt == 0)
    {
      if (a == null)
      {
        a = new PanelReviewTranslate(paramViewGroup.getContext(), c, a(), d);
        a.setId(2131493727);
        paramView = a;
      }
      a.a();
      return a;
    }
    return b.getView(paramInt - 1, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return b.getViewTypeCount() + 1;
  }
  
  public boolean isEnabled(int paramInt)
  {
    if (d())
    {
      if (paramInt == 0) {
        return true;
      }
      return b.isEnabled(paramInt - 1);
    }
    return b.isEnabled(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */