package android.support.v7.internal.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

class i
  extends Resources
{
  private final Resources a;
  
  public i(Resources paramResources)
  {
    super(paramResources.getAssets(), paramResources.getDisplayMetrics(), paramResources.getConfiguration());
    a = paramResources;
  }
  
  public XmlResourceParser getAnimation(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getAnimation(paramInt);
  }
  
  public boolean getBoolean(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getBoolean(paramInt);
  }
  
  public int getColor(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getColor(paramInt);
  }
  
  public ColorStateList getColorStateList(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getColorStateList(paramInt);
  }
  
  public Configuration getConfiguration()
  {
    return a.getConfiguration();
  }
  
  public float getDimension(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getDimension(paramInt);
  }
  
  public int getDimensionPixelOffset(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getDimensionPixelOffset(paramInt);
  }
  
  public int getDimensionPixelSize(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getDimensionPixelSize(paramInt);
  }
  
  public DisplayMetrics getDisplayMetrics()
  {
    return a.getDisplayMetrics();
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getDrawable(paramInt);
  }
  
  public Drawable getDrawable(int paramInt, Resources.Theme paramTheme)
    throws Resources.NotFoundException
  {
    return a.getDrawable(paramInt, paramTheme);
  }
  
  public Drawable getDrawableForDensity(int paramInt1, int paramInt2)
    throws Resources.NotFoundException
  {
    return a.getDrawableForDensity(paramInt1, paramInt2);
  }
  
  public Drawable getDrawableForDensity(int paramInt1, int paramInt2, Resources.Theme paramTheme)
  {
    return a.getDrawableForDensity(paramInt1, paramInt2, paramTheme);
  }
  
  public float getFraction(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.getFraction(paramInt1, paramInt2, paramInt3);
  }
  
  public int getIdentifier(String paramString1, String paramString2, String paramString3)
  {
    return a.getIdentifier(paramString1, paramString2, paramString3);
  }
  
  public int[] getIntArray(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getIntArray(paramInt);
  }
  
  public int getInteger(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getInteger(paramInt);
  }
  
  public XmlResourceParser getLayout(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getLayout(paramInt);
  }
  
  public Movie getMovie(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getMovie(paramInt);
  }
  
  public String getQuantityString(int paramInt1, int paramInt2)
    throws Resources.NotFoundException
  {
    return a.getQuantityString(paramInt1, paramInt2);
  }
  
  public String getQuantityString(int paramInt1, int paramInt2, Object... paramVarArgs)
    throws Resources.NotFoundException
  {
    return a.getQuantityString(paramInt1, paramInt2, paramVarArgs);
  }
  
  public CharSequence getQuantityText(int paramInt1, int paramInt2)
    throws Resources.NotFoundException
  {
    return a.getQuantityText(paramInt1, paramInt2);
  }
  
  public String getResourceEntryName(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getResourceEntryName(paramInt);
  }
  
  public String getResourceName(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getResourceName(paramInt);
  }
  
  public String getResourcePackageName(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getResourcePackageName(paramInt);
  }
  
  public String getResourceTypeName(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getResourceTypeName(paramInt);
  }
  
  public String getString(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getString(paramInt);
  }
  
  public String getString(int paramInt, Object... paramVarArgs)
    throws Resources.NotFoundException
  {
    return a.getString(paramInt, paramVarArgs);
  }
  
  public String[] getStringArray(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getStringArray(paramInt);
  }
  
  public CharSequence getText(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getText(paramInt);
  }
  
  public CharSequence getText(int paramInt, CharSequence paramCharSequence)
  {
    return a.getText(paramInt, paramCharSequence);
  }
  
  public CharSequence[] getTextArray(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getTextArray(paramInt);
  }
  
  public void getValue(int paramInt, TypedValue paramTypedValue, boolean paramBoolean)
    throws Resources.NotFoundException
  {
    a.getValue(paramInt, paramTypedValue, paramBoolean);
  }
  
  public void getValue(String paramString, TypedValue paramTypedValue, boolean paramBoolean)
    throws Resources.NotFoundException
  {
    a.getValue(paramString, paramTypedValue, paramBoolean);
  }
  
  public void getValueForDensity(int paramInt1, int paramInt2, TypedValue paramTypedValue, boolean paramBoolean)
    throws Resources.NotFoundException
  {
    a.getValueForDensity(paramInt1, paramInt2, paramTypedValue, paramBoolean);
  }
  
  public XmlResourceParser getXml(int paramInt)
    throws Resources.NotFoundException
  {
    return a.getXml(paramInt);
  }
  
  public TypedArray obtainAttributes(AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return a.obtainAttributes(paramAttributeSet, paramArrayOfInt);
  }
  
  public TypedArray obtainTypedArray(int paramInt)
    throws Resources.NotFoundException
  {
    return a.obtainTypedArray(paramInt);
  }
  
  public InputStream openRawResource(int paramInt)
    throws Resources.NotFoundException
  {
    return a.openRawResource(paramInt);
  }
  
  public InputStream openRawResource(int paramInt, TypedValue paramTypedValue)
    throws Resources.NotFoundException
  {
    return a.openRawResource(paramInt, paramTypedValue);
  }
  
  public AssetFileDescriptor openRawResourceFd(int paramInt)
    throws Resources.NotFoundException
  {
    return a.openRawResourceFd(paramInt);
  }
  
  public void parseBundleExtra(String paramString, AttributeSet paramAttributeSet, Bundle paramBundle)
    throws XmlPullParserException
  {
    a.parseBundleExtra(paramString, paramAttributeSet, paramBundle);
  }
  
  public void parseBundleExtras(XmlResourceParser paramXmlResourceParser, Bundle paramBundle)
    throws XmlPullParserException, IOException
  {
    a.parseBundleExtras(paramXmlResourceParser, paramBundle);
  }
  
  public void updateConfiguration(Configuration paramConfiguration, DisplayMetrics paramDisplayMetrics)
  {
    super.updateConfiguration(paramConfiguration, paramDisplayMetrics);
    if (a != null) {
      a.updateConfiguration(paramConfiguration, paramDisplayMetrics);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */