package com.yelp.android.ui.activities.reviewpage;

import android.app.Activity;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.activities.support.YelpFragment;

public class FlagReviewReasonsFragment
  extends YelpFragment
{
  private aa a;
  
  private CharSequence a()
  {
    Object localObject = getString(2131165646);
    String str3 = getString(2131166682);
    String str1 = getString(2131165647);
    String str2 = getString(2131166683);
    String str4 = getString(2131166391, new Object[] { localObject, str3 });
    int i = str4.indexOf(str3);
    int j = str3.length();
    int k = str4.indexOf((String)localObject);
    int m = ((String)localObject).length();
    localObject = new SpannableStringBuilder(str4);
    ((SpannableStringBuilder)localObject).setSpan(new URLSpan(str1), k, m + k, 33);
    ((SpannableStringBuilder)localObject).setSpan(new URLSpan(str2), i, j + i, 33);
    return (CharSequence)localObject;
  }
  
  private void a(View paramView, FlagReviewReasonsFragment.FlagType paramFlagType)
  {
    paramView.findViewById(viewId).setOnClickListener(new z(this, paramFlagType));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = ((aa)paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 0;
    paramLayoutInflater = paramLayoutInflater.inflate(2130903221, paramViewGroup, false);
    paramViewGroup = FlagReviewReasonsFragment.FlagType.values();
    int j = paramViewGroup.length;
    while (i < j)
    {
      a(paramLayoutInflater, paramViewGroup[i]);
      i += 1;
    }
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131493567);
    paramViewGroup.setText(a());
    paramViewGroup.setMovementMethod(LinkMovementMethod.getInstance());
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.FlagReviewReasonsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */