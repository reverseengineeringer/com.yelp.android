package android.support.v4.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

class ad$a
  extends SingleLineTransformationMethod
{
  private Locale a;
  
  public ad$a(Context paramContext)
  {
    a = getResourcesgetConfigurationlocale;
  }
  
  public CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
  {
    paramCharSequence = super.getTransformation(paramCharSequence, paramView);
    if (paramCharSequence != null) {
      return paramCharSequence.toString().toUpperCase(a);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */