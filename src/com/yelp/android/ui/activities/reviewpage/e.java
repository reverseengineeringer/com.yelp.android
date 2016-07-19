package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.w;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

public class e
  extends w<YelpBusinessReview>
{
  private PanelReviewTranslate a;
  private final c b = new c();
  private PanelReviewTranslate.TranslateState c = PanelReviewTranslate.TranslateState.ORIGINAL;
  private final PanelReviewTranslate.a d = new e.1(this);
  
  private boolean d()
  {
    boolean bool2 = false;
    Locale localLocale1 = c();
    boolean bool1 = bool2;
    if (localLocale1 != null)
    {
      Locale localLocale2 = AppData.b().g().h();
      bool1 = bool2;
      if (LocaleSettings.g(localLocale1.getLanguage()))
      {
        bool1 = bool2;
        if (LocaleSettings.g(localLocale2.getLanguage()))
        {
          bool1 = bool2;
          if (!localLocale2.equals(localLocale1)) {
            bool1 = true;
          }
        }
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
    b.b(paramYelpBusinessReview);
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
  
  public void b(YelpBusinessReview paramYelpBusinessReview)
  {
    b.a(paramYelpBusinessReview);
    if (a != null) {
      a.b(paramYelpBusinessReview);
    }
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
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (b.getCount() != 0)
    {
      YelpBusinessReview localYelpBusinessReview = b.a(0);
      localObject1 = localObject2;
      if (localYelpBusinessReview != null) {
        localObject1 = localYelpBusinessReview.o();
      }
    }
    return (Locale)localObject1;
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
        a.setId(2131690551);
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
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */