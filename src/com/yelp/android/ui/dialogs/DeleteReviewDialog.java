package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.services.f;

public class DeleteReviewDialog
  extends UserFeedbackDialog
{
  private static String b = "args_business_name";
  private static String c = "args_modified_date";
  private static String d = "MM/dd/yyyy";
  
  public static DeleteReviewDialog a(YelpBusinessReview paramYelpBusinessReview, b paramb)
  {
    Bundle localBundle = new Bundle();
    DeleteReviewDialog localDeleteReviewDialog = new DeleteReviewDialog();
    localBundle.putString(b, paramYelpBusinessReview.M());
    localBundle.putString(c, f.a(d, paramYelpBusinessReview.W()));
    localDeleteReviewDialog.setArguments(localBundle);
    localDeleteReviewDialog.a(paramb);
    return localDeleteReviewDialog;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = getArguments().getString(b);
    String str = getArguments().getString(c);
    return new AlertDialog.Builder(getActivity()).setTitle(2131165766).setMessage(getString(2131165767, new Object[] { paramBundle, str })).setPositiveButton(2131165760, new DeleteReviewDialog.1(this)).setNegativeButton(2131166036, null).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.DeleteReviewDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */