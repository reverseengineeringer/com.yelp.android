package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewTreeObserver;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flipboard.bottomsheet.BottomSheetLayout.State;
import com.yelp.android.services.ShareFormatter;

public class a
{
  private BottomSheetLayout a;
  private ShareFormatter b;
  private com.flipboard.bottomsheet.commons.a c;
  
  public a(Activity paramActivity, ShareFormatter paramShareFormatter)
  {
    a = ((BottomSheetLayout)paramActivity.findViewById(2131689996));
    b = paramShareFormatter;
    paramShareFormatter = new Intent("android.intent.action.SEND");
    paramShareFormatter.addCategory("android.intent.category.DEFAULT");
    paramShareFormatter.setType("text/plain");
    c = new com.flipboard.bottomsheet.commons.a(paramActivity, paramShareFormatter, paramActivity.getString(2131166581), new a.1(this, paramActivity, paramShareFormatter));
    c.setSortMethod(new a.2(this, paramActivity));
    a.setPeekOnDismiss(true);
  }
  
  public static a a(Activity paramActivity, Bundle paramBundle)
  {
    a locala = null;
    if (paramBundle.getBoolean("saved_share_sheet_in_view"))
    {
      locala = new a(paramActivity, (ShareFormatter)paramBundle.getParcelable("saved_share_formatter"));
      locala.a((BottomSheetLayout.State)paramBundle.getSerializable("saved_share_sheet_state"));
    }
    return locala;
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool;
    if ((a != null) && (a.d()))
    {
      bool = true;
      paramBundle.putBoolean("saved_share_sheet_in_view", bool);
      if (a == null) {
        break label64;
      }
    }
    label64:
    for (BottomSheetLayout.State localState = a.getState();; localState = BottomSheetLayout.State.HIDDEN)
    {
      paramBundle.putSerializable("saved_share_sheet_state", localState);
      paramBundle.putParcelable("saved_share_formatter", b);
      return;
      bool = false;
      break;
    }
  }
  
  public void a(BottomSheetLayout.State paramState)
  {
    if (a.getSheetView() == null) {
      a.a(c);
    }
    a.getViewTreeObserver().dispatchOnPreDraw();
    a.post(new a.3(this, paramState));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */