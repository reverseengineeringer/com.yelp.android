package com.yelp.android.ui.activities.reviewpage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.fj;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class PanelReviewTranslate
  extends SpannableRelativeLayout
{
  private PanelReviewTranslate.TranslateState a;
  private Button g;
  private TextView h;
  private ArrayList<YelpBusinessReview> i;
  private aj j;
  private final View.OnClickListener k = new ag(this);
  private final m<Map<String, String>> l = new ai(this);
  
  public PanelReviewTranslate(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = PanelReviewTranslate.TranslateState.ORIGINAL;
    i = new ArrayList();
    a(paramContext);
  }
  
  public PanelReviewTranslate(Context paramContext, PanelReviewTranslate.TranslateState paramTranslateState, List<YelpBusinessReview> paramList, aj paramaj)
  {
    super(paramContext);
    a = paramTranslateState;
    i = new ArrayList(paramList);
    j = paramaj;
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903358, this, true);
    g = ((Button)findViewById(2131493933));
    h = ((TextView)findViewById(2131493932));
    g.setOnClickListener(k);
  }
  
  public void a()
  {
    Object localObject1;
    if ((a != PanelReviewTranslate.TranslateState.TRANSLATING) && (i.size() > 0))
    {
      localObject1 = i.iterator();
      int n = 0;
      m = 0;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (YelpBusinessReview)((Iterator)localObject1).next();
        if ((((YelpBusinessReview)localObject2).shouldDisplayTranslation()) && (((YelpBusinessReview)localObject2).getTranslatedText() != null))
        {
          m = n;
          n = 1;
        }
        for (;;)
        {
          int i1 = n;
          n = m;
          m = i1;
          break;
          i1 = 1;
          n = m;
          m = i1;
        }
      }
      if (n != 0) {
        break label200;
      }
      a = PanelReviewTranslate.TranslateState.TRANSLATED;
    }
    for (;;)
    {
      localObject1 = (RelativeLayout.LayoutParams)g.getLayoutParams();
      if (a != PanelReviewTranslate.TranslateState.TRANSLATED) {
        break;
      }
      g.setText(getContext().getString(2131166580));
      h.setText(getContext().getResources().getQuantityString(2131623980, i.size()));
      h.setVisibility(0);
      width = -2;
      height = -2;
      g.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      return;
      label200:
      if (m == 0) {
        a = PanelReviewTranslate.TranslateState.ORIGINAL;
      }
    }
    Object localObject2 = AppData.b().g().h();
    Button localButton;
    Context localContext;
    if (i.size() > 0)
    {
      localButton = g;
      localContext = getContext();
      if (a != PanelReviewTranslate.TranslateState.ORIGINAL) {
        break label328;
      }
    }
    label328:
    for (int m = 2131166745;; m = 2131166749)
    {
      localButton.setText(localContext.getString(m, new Object[] { ((YelpBusinessReview)i.get(0)).getLocale().getDisplayLanguage(), ((Locale)localObject2).getDisplayLanguage() }));
      h.setVisibility(8);
      width = -1;
      g.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      return;
    }
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    int m = i.indexOf(paramYelpBusinessReview);
    if (m >= 0) {
      i.set(m, paramYelpBusinessReview);
    }
  }
  
  public void a(String paramString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getContext());
    localBuilder.setTitle(2131166746);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton(2131166464, new ah(this));
    localBuilder.setNegativeButton(2131165456, null);
    localBuilder.create().show();
  }
  
  public void a(Collection<? extends YelpBusinessReview> paramCollection)
  {
    i.addAll(paramCollection);
  }
  
  public void a(List<String> paramList)
  {
    new fj(paramList, AppData.b().g().h(), l).execute(new String[0]);
  }
  
  public PanelReviewTranslate.TranslateState getState()
  {
    return a;
  }
  
  public void setContents(List<YelpBusinessReview> paramList)
  {
    i = new ArrayList(paramList);
  }
  
  public void setOnTranslationStateChangedCb(aj paramaj)
  {
    j = paramaj;
  }
  
  public void setState(PanelReviewTranslate.TranslateState paramTranslateState)
  {
    a = paramTranslateState;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.PanelReviewTranslate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */