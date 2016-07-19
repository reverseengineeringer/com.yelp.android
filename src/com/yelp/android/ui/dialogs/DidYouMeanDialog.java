package com.yelp.android.ui.dialogs;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.style.AlignmentSpan.Standard;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class DidYouMeanDialog
  extends YelpActivity
{
  private static final String a = DidYouMeanDialog.class + ".extra.title";
  private static final String b = DidYouMeanDialog.class + ".extra.message";
  private int c;
  private CharSequence d;
  
  public static final Intent a(Context paramContext, int paramInt, CharSequence paramCharSequence)
  {
    paramContext = new Intent(paramContext, DidYouMeanDialog.class);
    paramContext.putExtra(a, paramInt);
    paramContext.putExtra(b, paramCharSequence);
    paramContext.addFlags(67108864);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTheme(2131296707);
    setContentView(new LinearLayout(this), new LinearLayout.LayoutParams(0, 0));
    Intent localIntent = getIntent();
    c = localIntent.getIntExtra(a, 0);
    d = localIntent.getStringExtra(b);
    if (paramBundle == null) {
      showDialog(1);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt != 1) {
      throw new IllegalStateException("Someone is using this Activity the wrong way");
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(d);
    localSpannableStringBuilder.setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER), 0, localSpannableStringBuilder.length(), 17);
    return new AlertDialog.Builder(this).setTitle(c).setMessage(localSpannableStringBuilder).setCancelable(false).setNegativeButton(2131166989, new a(this, 0)).setPositiveButton(2131166287, new a(this, -1)).create();
  }
  
  private static final class a
    implements DialogInterface.OnClickListener
  {
    private int a;
    private Activity b;
    
    public a(Activity paramActivity, int paramInt)
    {
      a = paramInt;
      b = paramActivity;
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.setResult(a, null);
      b.finish();
      paramDialogInterface.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.DidYouMeanDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */