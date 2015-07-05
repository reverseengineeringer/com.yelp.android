package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.style.AlignmentSpan.Standard;
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
    setTheme(2131689817);
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
    return new AlertDialog.Builder(this).setTitle(c).setMessage(localSpannableStringBuilder).setCancelable(false).setNegativeButton(2131166233, new s(this, 0)).setPositiveButton(2131166234, new s(this, -1)).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.DidYouMeanDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */