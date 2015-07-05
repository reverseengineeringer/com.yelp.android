package com.yelp.android.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import android.widget.TextView;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.bf.j;
import com.yelp.android.bf.k;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;

public class StringUtils
{
  public static char a = '…';
  public static int[] b = { k.LessThanAMinute, k.OneMinute, k.XMinutes, k.About1Hour, k.AboutXHours, k.OneDay, k.XDays, k.About1Month, k.XMonths, k.About1Year, k.OverXYears };
  public static int[] c = { k.Abbreviated_XSeconds, k.Abbreviated_XMinutes, k.Abbreviated_XMinutes, k.Abbreviated_XHours, k.Abbreviated_XHours, k.Abbreviated_XDays, k.Abbreviated_XDays, k.Abbreviated_XMonths, k.Abbreviated_XMonths, k.Abbreviated_XYears, k.Abbreviated_XYears };
  private static final List<String> d = Arrays.asList(new String[] { "/", "?", "&", "#" });
  
  public static Spannable a(Spannable paramSpannable, Class<?> paramClass, Object paramObject, int paramInt)
  {
    int j = 0;
    Object[] arrayOfObject = paramSpannable.getSpans(0, paramSpannable.length(), paramClass);
    int i;
    label41:
    Object localObject;
    if (((paramObject instanceof CharacterStyle)) && (!(paramObject instanceof ClickableSpan)))
    {
      i = 1;
      int k = arrayOfObject.length;
      if (j >= k) {
        break label107;
      }
      localObject = arrayOfObject[j];
      if (i == 0) {
        break label109;
      }
    }
    label107:
    label109:
    for (paramClass = CharacterStyle.wrap((CharacterStyle)paramObject);; paramClass = (Class<?>)paramObject)
    {
      paramSpannable.setSpan(paramClass, paramSpannable.getSpanStart(localObject), paramSpannable.getSpanEnd(localObject), paramInt);
      j += 1;
      break label41;
      i = 0;
      break;
      return paramSpannable;
    }
  }
  
  public static Spannable a(Spannable paramSpannable, Object paramObject1, Object paramObject2)
  {
    int i = paramSpannable.getSpanEnd(paramObject1);
    paramSpannable.setSpan(paramObject2, paramSpannable.getSpanStart(paramObject1), i, paramSpannable.getSpanFlags(paramObject1));
    return paramSpannable;
  }
  
  public static Spannable a(Spanned paramSpanned)
  {
    paramSpanned = SpannableString.valueOf(paramSpanned);
    paramSpanned.setSpan(new StyleSpan(1), 0, paramSpanned.length(), 18);
    return paramSpanned;
  }
  
  public static Spannable a(Spanned paramSpanned, int paramInt)
  {
    paramSpanned = new SpannableStringBuilder(paramSpanned);
    int i = -1;
    for (;;)
    {
      int j = paramSpanned.nextSpanTransition(i, paramSpanned.length(), StyleSpan.class);
      if (j == paramSpanned.length()) {
        break;
      }
      i = paramSpanned.nextSpanTransition(j, paramSpanned.length(), StyleSpan.class);
      paramSpanned.setSpan(new ForegroundColorSpan(paramInt), j, i, 0);
    }
    return paramSpanned;
  }
  
  public static Spannable a(Spanned paramSpanned, int paramInt, Context paramContext)
  {
    return a(SpannableString.valueOf(paramSpanned), StyleSpan.class, new ForegroundColorSpan(paramContext.getResources().getColor(paramInt)), 0);
  }
  
  public static Spanned a(Context paramContext, int paramInt1, int paramInt2, String... paramVarArgs)
  {
    int i = 0;
    while (i < paramVarArgs.length)
    {
      paramVarArgs[i] = TextUtils.htmlEncode(paramVarArgs[i]);
      i += 1;
    }
    return Html.fromHtml(a(paramContext, paramInt1, paramInt2, (Object[])paramVarArgs), new ah(paramContext.getResources(), 0), new ae());
  }
  
  public static Spanned a(Context paramContext, int paramInt, Object... paramVarArgs)
  {
    int i = 0;
    while (i < paramVarArgs.length)
    {
      Object localObject = paramVarArgs[i];
      if ((!(localObject instanceof Number)) && (!(localObject instanceof Boolean))) {
        paramVarArgs[i] = TextUtils.htmlEncode(String.valueOf(paramVarArgs[i]));
      }
      i += 1;
    }
    return Html.fromHtml(paramContext.getString(paramInt, paramVarArgs), new ah(paramContext.getResources(), 0), new ae());
  }
  
  private static StringUtils.Unit a(double paramDouble, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (paramDouble < 1.0D) {
        return StringUtils.Unit.METER;
      }
      return StringUtils.Unit.KILOMETER;
    }
    if (Double.compare(paramDouble, o.b(0.1D)) < 0) {
      return StringUtils.Unit.FOOT;
    }
    return StringUtils.Unit.MILE;
  }
  
  public static CharSequence a(int paramInt1, Context paramContext, List<String> paramList, int paramInt2, int paramInt3, String paramString)
  {
    String str = TextUtils.join(paramString, paramList);
    paramInt1 = paramList.size();
    if (paramInt1 > paramInt2) {
      str = TextUtils.join(paramString, paramList.subList(0, paramInt2));
    }
    paramList = str;
    if (paramInt1 + paramInt3 > paramInt2) {
      paramList = paramContext.getResources().getQuantityString(j.these_and_others, paramInt1 + paramInt3 - paramInt2, new Object[] { str, Integer.valueOf(paramInt1 + paramInt3 - paramInt2) });
    }
    return paramList;
  }
  
  public static CharSequence a(Context paramContext, List<String> paramList, int paramInt1, int paramInt2, String paramString)
  {
    return a(j.these_and_others, paramContext, paramList, paramInt1, paramInt2, paramString);
  }
  
  public static String a(double paramDouble1, double paramDouble2, StringUtils.Format paramFormat, Context paramContext)
  {
    if (paramDouble1 < o.c(paramDouble2)) {
      return "";
    }
    return b(paramDouble1, paramDouble2, paramFormat, paramContext);
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    int k = paramInt % 100;
    int j = k.ordinal_other;
    int i;
    if (k >= 11)
    {
      i = j;
      if (k <= 13) {}
    }
    else
    {
      switch (paramInt % 10)
      {
      default: 
        i = j;
      }
    }
    for (;;)
    {
      return paramContext.getString(i, new Object[] { Integer.valueOf(paramInt) });
      i = k.ordinal_first;
      continue;
      i = k.ordinal_second;
      continue;
      i = k.ordinal_third;
    }
  }
  
  public static String a(Context paramContext, int paramInt1, int paramInt2)
  {
    return paramContext.getResources().getQuantityString(paramInt1, paramInt2, new Object[] { Integer.valueOf(paramInt2) });
  }
  
  public static String a(Context paramContext, int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Object[] arrayOfObject = new Object[paramVarArgs.length + 1];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    System.arraycopy(paramVarArgs, 0, arrayOfObject, 1, paramVarArgs.length);
    return paramContext.getResources().getQuantityString(paramInt1, paramInt2, arrayOfObject);
  }
  
  public static String a(Context paramContext, StringUtils.Format paramFormat, Date paramDate)
  {
    switch (ab.b[paramFormat.ordinal()])
    {
    default: 
      return a(paramContext, paramDate);
    }
    return b(paramContext, paramDate);
  }
  
  private static String a(Context paramContext, Date paramDate)
  {
    if (paramDate.getTime() < System.currentTimeMillis() - 31449600000L) {
      return DateUtils.formatDateTime(paramContext, paramDate.getTime(), 131072);
    }
    return paramContext.getString(k.time_ago, new Object[] { a(paramContext, paramDate, b) });
  }
  
  private static String a(Context paramContext, Date paramDate, int[] paramArrayOfInt)
  {
    double d1 = (System.currentTimeMillis() - paramDate.getTime()) / 1000.0D;
    long l = Math.round(Math.abs(d1) / 60.0D);
    if ((l >= 0L) && (l <= 1L))
    {
      if (l <= 0L) {
        return paramContext.getString(paramArrayOfInt[0], new Object[] { Long.valueOf(Math.round(Math.abs(d1))) });
      }
      return paramContext.getString(paramArrayOfInt[1], new Object[] { Integer.valueOf(1) });
    }
    if ((l >= 2L) && (l <= 44L)) {
      return paramContext.getString(paramArrayOfInt[2], new Object[] { Long.valueOf(l) });
    }
    if ((l >= 45L) && (l <= 89L)) {
      return paramContext.getString(paramArrayOfInt[3], new Object[] { Integer.valueOf(1) });
    }
    if ((l >= 90L) && (l <= 1439L)) {
      return paramContext.getString(paramArrayOfInt[4], new Object[] { Long.valueOf(Math.round(l / 60.0D)) });
    }
    if ((l >= 1440L) && (l <= 2879L)) {
      return paramContext.getString(paramArrayOfInt[5], new Object[] { Integer.valueOf(1) });
    }
    if ((l >= 2880L) && (l <= 43199L)) {
      return paramContext.getString(paramArrayOfInt[6], new Object[] { Long.valueOf(Math.round(l / 1440.0D)) });
    }
    if ((l >= 43200L) && (l <= 86399L)) {
      return paramContext.getString(paramArrayOfInt[7], new Object[] { Integer.valueOf(1) });
    }
    if ((l >= 86400L) && (l <= 525599L)) {
      return paramContext.getString(paramArrayOfInt[8], new Object[] { Long.valueOf(Math.round(l / 43200.0D)) });
    }
    if ((l >= 525600L) && (l <= 1051199L)) {
      return paramContext.getString(paramArrayOfInt[9], new Object[] { Integer.valueOf(1) });
    }
    return paramContext.getString(paramArrayOfInt[10], new Object[] { Integer.valueOf((int)Math.floor(l / 525600.0D)) });
  }
  
  public static String a(Resources paramResources, int paramInt)
  {
    paramResources = paramResources.getStringArray(paramInt);
    return paramResources[new java.util.Random().nextInt(paramResources.length)];
  }
  
  public static String a(Bundle paramBundle, String paramString1, String paramString2)
  {
    if (paramBundle.containsKey(paramString1)) {
      paramString2 = paramBundle.getString(paramString1);
    }
    return paramString2;
  }
  
  public static String a(File paramFile)
  {
    paramFile = new BufferedReader(new FileReader(paramFile));
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      String str = paramFile.readLine();
      if (str == null) {
        break;
      }
      localStringBuilder.append(str);
      localStringBuilder.append(System.getProperty("line.separator"));
    }
    paramFile.close();
    return localStringBuilder.toString();
  }
  
  public static <T> String a(CharSequence paramCharSequence, Iterable<T> paramIterable, ag<T> paramag)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      Object localObject = paramIterable.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(paramCharSequence);
      }
      localStringBuilder.append(paramag.a(localObject));
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    return paramString.replaceAll("\n", "").trim();
  }
  
  public static String a(List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return new JSONArray().toString();
    }
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if (!TextUtils.isEmpty(str)) {
        localJSONArray.put(str);
      }
    }
    return localJSONArray.toString();
  }
  
  private static List<Integer> a(String paramString1, String paramString2)
  {
    LinkedList localLinkedList = new LinkedList();
    for (int i = paramString2.indexOf(paramString1); i != -1; i = paramString2.indexOf(paramString1, i + paramString1.length())) {
      localLinkedList.add(Integer.valueOf(i));
    }
    return localLinkedList;
  }
  
  public static void a(Spannable paramSpannable, String paramString, Drawable paramDrawable)
  {
    paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    paramDrawable = new ImageSpan(paramDrawable, 0);
    int i = paramSpannable.toString().indexOf(paramString);
    paramSpannable.setSpan(paramDrawable, i, paramString.length() + i, 33);
  }
  
  public static void a(TextView paramTextView, int paramInt, String paramString)
  {
    paramTextView.setClickable(true);
    paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
    paramTextView.setText(Html.fromHtml("<a href='" + paramString + "'> " + paramTextView.getResources().getString(paramInt) + "</a>"));
  }
  
  public static boolean a(List<String> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (((String)paramList.next()).equalsIgnoreCase(paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public static String b(double paramDouble1, double paramDouble2, StringUtils.Format paramFormat, Context paramContext)
  {
    if ((Double.isNaN(paramDouble1)) || (Double.isNaN(paramDouble2))) {
      return "";
    }
    Object localObject = BaseYelpApplication.d(paramContext).g();
    StringUtils.Unit localUnit = a(paramDouble1, ((LocaleSettings)localObject).a(paramContext));
    int j = localUnit.getLocationPrecision(paramDouble2);
    NumberFormat localNumberFormat = NumberFormat.getNumberInstance(((LocaleSettings)localObject).h());
    localNumberFormat.setMaximumFractionDigits(Math.max(0, 1 - j));
    localNumberFormat.setMinimumFractionDigits(0);
    if (((LocaleSettings)localObject).d()) {}
    for (int i = 1;; i = 0)
    {
      localNumberFormat.setMinimumIntegerDigits(i);
      localObject = new BigDecimal(localUnit.convertFromKm(paramDouble1)).setScale(0 - j, RoundingMode.HALF_UP);
      return paramContext.getResources().getQuantityString(paramFormat.getQuantityResourceId(localUnit), ((BigDecimal)localObject).intValue(), new Object[] { localNumberFormat.format(localObject) });
    }
  }
  
  private static String b(Context paramContext, Date paramDate)
  {
    return paramContext.getString(k.time_ago, new Object[] { a(paramContext, paramDate, c) });
  }
  
  public static String b(String paramString)
  {
    Iterator localIterator = a("access_token=", paramString).iterator();
    String str;
    int i;
    do
    {
      str = paramString;
      if (!localIterator.hasNext()) {
        break;
      }
      i = ((Integer)localIterator.next()).intValue();
      str = String.valueOf(paramString.charAt(i - 1));
    } while (!d.contains(str));
    int j = paramString.indexOf("&", "access_token=".length() + i);
    if (j == -1)
    {
      if ("&".equals(str))
      {
        str = paramString.substring(0, i - 1);
        return str;
      }
      return paramString.substring(0, i);
    }
    return paramString.substring(0, i) + paramString.substring(j + 1);
  }
  
  public static String c(String paramString)
  {
    return paramString.substring(0, TextUtils.indexOf(paramString, ' '));
  }
  
  public static String d(String paramString)
  {
    return String.format("“%s”", new Object[] { paramString });
  }
  
  public static boolean e(String paramString)
  {
    return (TextUtils.isEmpty(paramString)) || (TextUtils.getTrimmedLength(paramString) == 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.StringUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */