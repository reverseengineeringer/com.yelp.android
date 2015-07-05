package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.c;
import android.support.v4.widget.aw;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.g.b;
import com.yelp.android.g.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

class dc
  extends aw
  implements View.OnClickListener
{
  private final SearchManager j = (SearchManager)d.getSystemService("search");
  private final SearchView k;
  private final SearchableInfo l;
  private final Context m;
  private final WeakHashMap<String, Drawable.ConstantState> n;
  private final int o;
  private boolean p = false;
  private int q = 1;
  private ColorStateList r;
  private int s = -1;
  private int t = -1;
  private int u = -1;
  private int v = -1;
  private int w = -1;
  private int x = -1;
  
  public dc(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.getSuggestionRowLayout(), null, true);
    k = paramSearchView;
    l = paramSearchableInfo;
    o = paramSearchView.getSuggestionCommitIconResId();
    m = paramContext;
    n = paramWeakHashMap;
  }
  
  private Drawable a(ComponentName paramComponentName)
  {
    Object localObject = null;
    String str = paramComponentName.flattenToShortString();
    if (n.containsKey(str))
    {
      paramComponentName = (Drawable.ConstantState)n.get(str);
      if (paramComponentName == null) {
        return null;
      }
      return paramComponentName.newDrawable(m.getResources());
    }
    Drawable localDrawable = b(paramComponentName);
    if (localDrawable == null) {}
    for (paramComponentName = (ComponentName)localObject;; paramComponentName = localDrawable.getConstantState())
    {
      n.put(str, paramComponentName);
      return localDrawable;
    }
  }
  
  private Drawable a(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.length() == 0) || ("0".equals(paramString))) {
      localObject1 = null;
    }
    for (;;)
    {
      return (Drawable)localObject1;
      try
      {
        int i = Integer.parseInt(paramString);
        String str = "android.resource://" + m.getPackageName() + "/" + i;
        localDrawable = b(str);
        localObject1 = localDrawable;
        if (localDrawable == null)
        {
          localObject1 = c.getDrawable(m, i);
          a(str, (Drawable)localObject1);
          return (Drawable)localObject1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Drawable localDrawable = b(paramString);
        Object localObject2 = localDrawable;
        if (localDrawable == null)
        {
          localObject2 = b(Uri.parse(paramString));
          a(paramString, (Drawable)localObject2);
          return (Drawable)localObject2;
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
      }
    }
    return null;
  }
  
  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  public static String a(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }
  
  private void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }
  
  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      n.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  private Drawable b(ComponentName paramComponentName)
  {
    Object localObject = d.getPackageManager();
    ActivityInfo localActivityInfo;
    int i;
    try
    {
      localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      i = localActivityInfo.getIconResource();
      if (i == 0) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
      return null;
    }
    localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, applicationInfo);
    if (localObject == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return (Drawable)localObject;
  }
  
  private Drawable b(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (bool) {
        try
        {
          Drawable localDrawable1 = a(paramUri);
          return localDrawable1;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          throw new FileNotFoundException("Resource does not exist: " + paramUri);
        }
      }
      localInputStream = m.getContentResolver().openInputStream(paramUri);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon not found: " + paramUri + ", " + localFileNotFoundException.getMessage());
      return null;
    }
    InputStream localInputStream;
    if (localInputStream == null) {
      throw new FileNotFoundException("Failed to open " + paramUri);
    }
    try
    {
      Drawable localDrawable2 = Drawable.createFromStream(localInputStream, null);
      try
      {
        localInputStream.close();
        return localDrawable2;
      }
      catch (IOException localIOException1)
      {
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException1);
        return localDrawable2;
      }
      try
      {
        localIOException1.close();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException2);
        }
      }
    }
    finally {}
  }
  
  private Drawable b(String paramString)
  {
    paramString = (Drawable.ConstantState)n.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  private CharSequence b(CharSequence paramCharSequence)
  {
    if (r == null)
    {
      localObject = new TypedValue();
      d.getTheme().resolveAttribute(b.textColorSearchUrl, (TypedValue)localObject, true);
      r = d.getResources().getColorStateList(resourceId);
    }
    Object localObject = new SpannableString(paramCharSequence);
    ((SpannableString)localObject).setSpan(new TextAppearanceSpan(null, 0, 0, r, null), 0, paramCharSequence.length(), 33);
    return (CharSequence)localObject;
  }
  
  private void d(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    for (paramCursor = paramCursor.getExtras();; paramCursor = null)
    {
      if ((paramCursor != null) && (paramCursor.getBoolean("in_progress"))) {}
      return;
    }
  }
  
  private Drawable e(Cursor paramCursor)
  {
    Object localObject;
    if (v == -1) {
      localObject = null;
    }
    Drawable localDrawable;
    do
    {
      return (Drawable)localObject;
      localDrawable = a(paramCursor.getString(v));
      localObject = localDrawable;
    } while (localDrawable != null);
    return g(paramCursor);
  }
  
  private Drawable f(Cursor paramCursor)
  {
    if (w == -1) {
      return null;
    }
    return a(paramCursor.getString(w));
  }
  
  private Drawable g(Cursor paramCursor)
  {
    paramCursor = a(l.getSearchActivity());
    if (paramCursor != null) {
      return paramCursor;
    }
    return d.getPackageManager().getDefaultActivityIcon();
  }
  
  Cursor a(SearchableInfo paramSearchableInfo, String paramString, int paramInt)
  {
    if (paramSearchableInfo == null) {}
    do
    {
      return null;
      localObject = paramSearchableInfo.getSuggestAuthority();
    } while (localObject == null);
    Object localObject = new Uri.Builder().scheme("content").authority((String)localObject).query("").fragment("");
    String str = paramSearchableInfo.getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject).appendPath("search_suggest_query");
    str = paramSearchableInfo.getSuggestSelection();
    if (str != null)
    {
      paramSearchableInfo = new String[1];
      paramSearchableInfo[0] = paramString;
    }
    for (;;)
    {
      if (paramInt > 0) {
        ((Uri.Builder)localObject).appendQueryParameter("limit", String.valueOf(paramInt));
      }
      paramString = ((Uri.Builder)localObject).build();
      return d.getContentResolver().query(paramString, null, str, paramSearchableInfo, null);
      ((Uri.Builder)localObject).appendPath(paramString);
      paramSearchableInfo = null;
    }
  }
  
  public Cursor a(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    for (paramCharSequence = ""; (k.getVisibility() != 0) || (k.getWindowVisibility() != 0); paramCharSequence = paramCharSequence.toString()) {
      return null;
    }
    try
    {
      paramCharSequence = a(l, paramCharSequence, 50);
      if (paramCharSequence != null)
      {
        paramCharSequence.getCount();
        return paramCharSequence;
      }
    }
    catch (RuntimeException paramCharSequence)
    {
      Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
    }
    return null;
  }
  
  Drawable a(Uri paramUri)
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str)) {
      throw new FileNotFoundException("No authority: " + paramUri);
    }
    Resources localResources;
    List localList;
    try
    {
      localResources = d.getPackageManager().getResourcesForApplication(str);
      localList = paramUri.getPathSegments();
      if (localList == null) {
        throw new FileNotFoundException("No path: " + paramUri);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    int i = localList.size();
    if (i == 1) {}
    for (;;)
    {
      try
      {
        i = Integer.parseInt((String)localList.get(0));
        if (i != 0) {
          break;
        }
        throw new FileNotFoundException("No resource found for: " + paramUri);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
      if (i == 2) {
        i = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), localNumberFormatException);
      } else {
        throw new FileNotFoundException("More than two path segments: " + paramUri);
      }
    }
    return localResources.getDrawable(i);
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.a(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new dd(paramContext));
    ((ImageView)paramContext.findViewById(g.edit_query)).setImageResource(o);
    return paramContext;
  }
  
  public void a(int paramInt)
  {
    q = paramInt;
  }
  
  public void a(Cursor paramCursor)
  {
    if (p)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    for (;;)
    {
      return;
      try
      {
        super.a(paramCursor);
        if (paramCursor != null)
        {
          s = paramCursor.getColumnIndex("suggest_text_1");
          t = paramCursor.getColumnIndex("suggest_text_2");
          u = paramCursor.getColumnIndex("suggest_text_2_url");
          v = paramCursor.getColumnIndex("suggest_icon_1");
          w = paramCursor.getColumnIndex("suggest_icon_2");
          x = paramCursor.getColumnIndex("suggest_flags");
          return;
        }
      }
      catch (Exception paramCursor)
      {
        Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
      }
    }
  }
  
  public void a(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (dd)paramView.getTag();
    if (x != -1) {}
    for (int i = paramCursor.getInt(x);; i = 0)
    {
      if (a != null)
      {
        paramView = a(paramCursor, s);
        a(a, paramView);
      }
      if (b != null)
      {
        paramView = a(paramCursor, u);
        if (paramView == null) {
          break label215;
        }
        paramView = b(paramView);
        if (!TextUtils.isEmpty(paramView)) {
          break label227;
        }
        if (a != null)
        {
          a.setSingleLine(false);
          a.setMaxLines(2);
        }
      }
      for (;;)
      {
        a(b, paramView);
        if (c != null) {
          a(c, e(paramCursor), 4);
        }
        if (d != null) {
          a(d, f(paramCursor), 8);
        }
        if ((q != 2) && ((q != 1) || ((i & 0x1) == 0))) {
          break label253;
        }
        e.setVisibility(0);
        e.setTag(a.getText());
        e.setOnClickListener(this);
        return;
        label215:
        paramView = a(paramCursor, t);
        break;
        label227:
        if (a != null)
        {
          a.setSingleLine(true);
          a.setMaxLines(1);
        }
      }
      label253:
      e.setVisibility(8);
      return;
    }
  }
  
  public CharSequence c(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      do
      {
        return null;
        String str = a(paramCursor, "suggest_intent_query");
        if (str != null) {
          return str;
        }
        if (l.shouldRewriteQueryFromData())
        {
          str = a(paramCursor, "suggest_intent_data");
          if (str != null) {
            return str;
          }
        }
      } while (!l.shouldRewriteQueryFromText());
      paramCursor = a(paramCursor, "suggest_text_1");
    } while (paramCursor == null);
    return paramCursor;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = a(d, c, paramViewGroup);
      if (paramViewGroup != null) {
        getTaga.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    d(a());
  }
  
  public void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    d(a());
  }
  
  public void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      k.a((CharSequence)paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */