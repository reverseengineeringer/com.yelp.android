package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v7.internal.widget.o;
import android.support.v7.internal.widget.p;
import android.support.v7.internal.widget.r;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.d;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.k;
import com.yelp.android.r.b;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends LinearLayoutCompat
  implements b
{
  static final a a;
  private static final boolean c;
  private android.support.v4.widget.g A;
  private boolean B;
  private CharSequence C;
  private boolean D;
  private boolean E;
  private int F;
  private boolean G;
  private CharSequence H;
  private CharSequence I;
  private boolean J;
  private int K;
  private SearchableInfo L;
  private Bundle M;
  private final o N;
  private Runnable O = new Runnable()
  {
    public void run()
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
      if (localInputMethodManager != null) {
        SearchView.a.a(localInputMethodManager, SearchView.this, 0);
      }
    }
  };
  private final Runnable P = new Runnable()
  {
    public void run()
    {
      SearchView.a(SearchView.this);
    }
  };
  private Runnable Q = new Runnable()
  {
    public void run()
    {
      if ((SearchView.b(SearchView.this) != null) && ((SearchView.b(SearchView.this) instanceof l))) {
        SearchView.b(SearchView.this).a(null);
      }
    }
  };
  private final WeakHashMap<String, Drawable.ConstantState> R = new WeakHashMap();
  private final View.OnClickListener S = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView == SearchView.e(SearchView.this)) {
        SearchView.f(SearchView.this);
      }
      do
      {
        return;
        if (paramAnonymousView == SearchView.g(SearchView.this))
        {
          SearchView.h(SearchView.this);
          return;
        }
        if (paramAnonymousView == SearchView.i(SearchView.this))
        {
          SearchView.j(SearchView.this);
          return;
        }
        if (paramAnonymousView == SearchView.k(SearchView.this))
        {
          SearchView.l(SearchView.this);
          return;
        }
      } while (paramAnonymousView != SearchView.m(SearchView.this));
      SearchView.n(SearchView.this);
    }
  };
  private final TextView.OnEditorActionListener T = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      SearchView.j(SearchView.this);
      return true;
    }
  };
  private final AdapterView.OnItemClickListener U = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      SearchView.a(SearchView.this, paramAnonymousInt, 0, null);
    }
  };
  private final AdapterView.OnItemSelectedListener V = new AdapterView.OnItemSelectedListener()
  {
    public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      SearchView.a(SearchView.this, paramAnonymousInt);
    }
    
    public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
  };
  private TextWatcher W = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      SearchView.a(SearchView.this, paramAnonymousCharSequence);
    }
  };
  View.OnKeyListener b = new View.OnKeyListener()
  {
    public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if (SearchView.o(SearchView.this) == null) {}
      do
      {
        return false;
        if ((SearchView.m(SearchView.this).isPopupShowing()) && (SearchView.m(SearchView.this).getListSelection() != -1)) {
          return SearchView.a(SearchView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousKeyEvent);
        }
      } while ((SearchView.SearchAutoComplete.a(SearchView.m(SearchView.this))) || (!android.support.v4.view.g.a(paramAnonymousKeyEvent)) || (paramAnonymousKeyEvent.getAction() != 1) || (paramAnonymousInt != 66));
      paramAnonymousView.cancelLongPress();
      SearchView.a(SearchView.this, 0, null, SearchView.m(SearchView.this).getText().toString());
      return true;
    }
  };
  private final SearchAutoComplete d;
  private final View e;
  private final View f;
  private final View g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private final ImageView k;
  private final View l;
  private final ImageView m;
  private final Drawable n;
  private final int o;
  private final int p;
  private final Intent q;
  private final Intent r;
  private final CharSequence s;
  private c t;
  private b u;
  private View.OnFocusChangeListener v;
  private d w;
  private View.OnClickListener x;
  private boolean y;
  private boolean z;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      a = new a();
      return;
    }
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.searchViewStyle);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = p.a(paramContext, paramAttributeSet, a.k.SearchView, paramInt, 0);
    N = paramAttributeSet.c();
    LayoutInflater.from(paramContext).inflate(paramAttributeSet.g(a.k.SearchView_layout, a.h.abc_search_view), this, true);
    d = ((SearchAutoComplete)findViewById(a.f.search_src_text));
    d.setSearchView(this);
    e = findViewById(a.f.search_edit_frame);
    f = findViewById(a.f.search_plate);
    g = findViewById(a.f.submit_area);
    h = ((ImageView)findViewById(a.f.search_button));
    i = ((ImageView)findViewById(a.f.search_go_btn));
    j = ((ImageView)findViewById(a.f.search_close_btn));
    k = ((ImageView)findViewById(a.f.search_voice_btn));
    m = ((ImageView)findViewById(a.f.search_mag_icon));
    f.setBackgroundDrawable(paramAttributeSet.a(a.k.SearchView_queryBackground));
    g.setBackgroundDrawable(paramAttributeSet.a(a.k.SearchView_submitBackground));
    h.setImageDrawable(paramAttributeSet.a(a.k.SearchView_searchIcon));
    i.setImageDrawable(paramAttributeSet.a(a.k.SearchView_goIcon));
    j.setImageDrawable(paramAttributeSet.a(a.k.SearchView_closeIcon));
    k.setImageDrawable(paramAttributeSet.a(a.k.SearchView_voiceIcon));
    m.setImageDrawable(paramAttributeSet.a(a.k.SearchView_searchIcon));
    n = paramAttributeSet.a(a.k.SearchView_searchHintIcon);
    o = paramAttributeSet.g(a.k.SearchView_suggestionRowLayout, a.h.abc_search_dropdown_item_icons_2line);
    p = paramAttributeSet.g(a.k.SearchView_commitIcon, 0);
    h.setOnClickListener(S);
    j.setOnClickListener(S);
    i.setOnClickListener(S);
    k.setOnClickListener(S);
    d.setOnClickListener(S);
    d.addTextChangedListener(W);
    d.setOnEditorActionListener(T);
    d.setOnItemClickListener(U);
    d.setOnItemSelectedListener(V);
    d.setOnKeyListener(b);
    d.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (SearchView.c(SearchView.this) != null) {
          SearchView.c(SearchView.this).onFocusChange(SearchView.this, paramAnonymousBoolean);
        }
      }
    });
    setIconifiedByDefault(paramAttributeSet.a(a.k.SearchView_iconifiedByDefault, true));
    paramInt = paramAttributeSet.e(a.k.SearchView_android_maxWidth, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    s = paramAttributeSet.c(a.k.SearchView_defaultQueryHint);
    C = paramAttributeSet.c(a.k.SearchView_queryHint);
    paramInt = paramAttributeSet.a(a.k.SearchView_android_imeOptions, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = paramAttributeSet.a(a.k.SearchView_android_inputType, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(paramAttributeSet.a(a.k.SearchView_android_focusable, true));
    paramAttributeSet.b();
    q = new Intent("android.speech.action.WEB_SEARCH");
    q.addFlags(268435456);
    q.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    r = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    r.addFlags(268435456);
    l = findViewById(d.getDropDownAnchor());
    if (l != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label768;
      }
      e();
    }
    for (;;)
    {
      a(y);
      n();
      return;
      label768:
      f();
    }
  }
  
  @TargetApi(8)
  private Intent a(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {}
    for (paramIntent = null;; paramIntent = paramIntent.flattenToShortString())
    {
      localIntent.putExtra("calling_package", paramIntent);
      return localIntent;
    }
  }
  
  private Intent a(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      localObject2 = l.a(paramCursor, "suggest_intent_action");
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label229;
      }
      localObject1 = localObject2;
      if (Build.VERSION.SDK_INT < 8) {
        break label229;
      }
      localObject1 = L.getSuggestIntentAction();
    }
    catch (RuntimeException paramString)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject3;
        try
        {
          String str;
          paramInt = paramCursor.getPosition();
          Log.w("SearchView", "Search suggestions cursor at row " + paramInt + " returned exception.", paramString);
          return null;
        }
        catch (RuntimeException paramCursor)
        {
          paramInt = -1;
          continue;
        }
        label229:
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = "android.intent.action.SEARCH";
          continue;
          label246:
          if (localObject3 == null) {
            localObject1 = null;
          }
        }
      }
    }
    localObject3 = l.a(paramCursor, "suggest_intent_data");
    localObject1 = localObject3;
    if (c)
    {
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = L.getSuggestIntentData();
      }
    }
    localObject3 = localObject1;
    if (localObject1 != null)
    {
      str = l.a(paramCursor, "suggest_intent_data_id");
      localObject3 = localObject1;
      if (str != null)
      {
        localObject3 = (String)localObject1 + "/" + Uri.encode(str);
        break label246;
        for (;;)
        {
          localObject3 = l.a(paramCursor, "suggest_intent_query");
          return a((String)localObject2, (Uri)localObject1, l.a(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
          localObject1 = Uri.parse((String)localObject3);
        }
      }
    }
  }
  
  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", I);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (M != null) {
      paramString1.putExtra("app_data", M);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    if (c) {
      paramString1.setComponent(L.getSearchActivity());
    }
    return paramString1;
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    int i2 = 8;
    z = paramBoolean;
    int i1;
    boolean bool1;
    if (paramBoolean)
    {
      i1 = 0;
      if (TextUtils.isEmpty(d.getText())) {
        break label115;
      }
      bool1 = true;
      label33:
      h.setVisibility(i1);
      b(bool1);
      Object localObject = e;
      if (!paramBoolean) {
        break label121;
      }
      i1 = 8;
      label60:
      ((View)localObject).setVisibility(i1);
      localObject = m;
      if (!y) {
        break label126;
      }
      i1 = i2;
      label81:
      ((ImageView)localObject).setVisibility(i1);
      k();
      if (bool1) {
        break label131;
      }
    }
    label115:
    label121:
    label126:
    label131:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      c(paramBoolean);
      i();
      return;
      i1 = 8;
      break;
      bool1 = false;
      break label33;
      i1 = 0;
      break label60;
      i1 = 0;
      break label81;
    }
  }
  
  private boolean a(int paramInt)
  {
    if ((w == null) || (!w.a(paramInt)))
    {
      e(paramInt);
      return true;
    }
    return false;
  }
  
  private boolean a(int paramInt1, int paramInt2, String paramString)
  {
    boolean bool = false;
    if ((w == null) || (!w.b(paramInt1)))
    {
      b(paramInt1, 0, null);
      setImeVisibility(false);
      q();
      bool = true;
    }
    return bool;
  }
  
  static boolean a(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private boolean a(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (L == null) {}
    do
    {
      do
      {
        return false;
      } while ((A == null) || (paramKeyEvent.getAction() != 0) || (!android.support.v4.view.g.a(paramKeyEvent)));
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return a(d.getListSelection(), 0, null);
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {}
        for (paramInt = 0;; paramInt = d.length())
        {
          d.setSelection(paramInt);
          d.setListSelection(0);
          d.clearListSelection();
          a.a(d, true);
          return true;
        }
      }
    } while ((paramInt != 19) || (d.getListSelection() != 0));
    return false;
  }
  
  @TargetApi(8)
  private Intent b(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Object localObject3 = null;
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1073741824);
    Bundle localBundle = new Bundle();
    if (M != null) {
      localBundle.putParcelable("app_data", M);
    }
    Intent localIntent = new Intent(paramIntent);
    paramIntent = "free_form";
    Object localObject2;
    label153:
    int i1;
    if (Build.VERSION.SDK_INT >= 8)
    {
      localObject2 = getResources();
      if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
        paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
      }
      if (paramSearchableInfo.getVoicePromptTextId() != 0)
      {
        localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());
        if (paramSearchableInfo.getVoiceLanguageId() != 0)
        {
          localObject2 = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());
          if (paramSearchableInfo.getVoiceMaxResults() != 0) {
            i1 = paramSearchableInfo.getVoiceMaxResults();
          }
        }
      }
    }
    for (;;)
    {
      localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramIntent);
      localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
      localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
      localIntent.putExtra("android.speech.extra.MAX_RESULTS", i1);
      if (localComponentName == null) {}
      for (paramIntent = (Intent)localObject3;; paramIntent = localComponentName.flattenToShortString())
      {
        localIntent.putExtra("calling_package", paramIntent);
        localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
        localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
        return localIntent;
      }
      i1 = 1;
      continue;
      localObject2 = null;
      break label153;
      localObject1 = null;
      break;
      localObject2 = null;
      localObject1 = null;
      paramIntent = "free_form";
      i1 = 1;
    }
  }
  
  private CharSequence b(CharSequence paramCharSequence)
  {
    if ((!y) || (n == null)) {
      return paramCharSequence;
    }
    int i1 = (int)(d.getTextSize() * 1.25D);
    n.setBounds(0, 0, i1, i1);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.setSpan(new ImageSpan(n), 1, 2, 33);
    localSpannableStringBuilder.append(paramCharSequence);
    return localSpannableStringBuilder;
  }
  
  private void b(boolean paramBoolean)
  {
    int i2 = 8;
    int i1 = i2;
    if (B)
    {
      i1 = i2;
      if (h())
      {
        i1 = i2;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i1 = i2;
            if (G) {}
          }
          else
          {
            i1 = 0;
          }
        }
      }
    }
    i.setVisibility(i1);
  }
  
  private boolean b(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = A.a();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      a(a(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private void c(CharSequence paramCharSequence)
  {
    boolean bool2 = true;
    Editable localEditable = d.getText();
    I = localEditable;
    if (!TextUtils.isEmpty(localEditable))
    {
      bool1 = true;
      b(bool1);
      if (bool1) {
        break label101;
      }
    }
    label101:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      c(bool1);
      k();
      i();
      if ((t != null) && (!TextUtils.equals(paramCharSequence, H))) {
        t.b(paramCharSequence.toString());
      }
      H = paramCharSequence.toString();
      return;
      bool1 = false;
      break;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    int i1;
    if ((G) && (!c()) && (paramBoolean))
    {
      i1 = 0;
      i.setVisibility(8);
    }
    for (;;)
    {
      k.setVisibility(i1);
      return;
      i1 = 8;
    }
  }
  
  @TargetApi(11)
  private void e()
  {
    l.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
    {
      public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
      {
        SearchView.d(SearchView.this);
      }
    });
  }
  
  private void e(int paramInt)
  {
    Editable localEditable = d.getText();
    Object localObject = A.a();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = A.c((Cursor)localObject);
      if (localObject != null)
      {
        setQuery((CharSequence)localObject);
        return;
      }
      setQuery(localEditable);
      return;
    }
    setQuery(localEditable);
  }
  
  private void f()
  {
    l.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        SearchView.d(SearchView.this);
      }
    });
  }
  
  @TargetApi(8)
  private boolean g()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Intent localIntent;
    if (L != null)
    {
      bool1 = bool2;
      if (L.getVoiceSearchEnabled())
      {
        localIntent = null;
        if (!L.getVoiceSearchLaunchWebSearch()) {
          break label69;
        }
        localIntent = q;
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (localIntent != null)
      {
        bool1 = bool2;
        if (getContext().getPackageManager().resolveActivity(localIntent, 65536) != null) {
          bool1 = true;
        }
      }
      return bool1;
      label69:
      if (L.getVoiceSearchLaunchRecognizer()) {
        localIntent = r;
      }
    }
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(a.d.abc_search_view_preferred_width);
  }
  
  private boolean h()
  {
    return ((B) || (G)) && (!c());
  }
  
  private void i()
  {
    int i2 = 8;
    int i1 = i2;
    if (h()) {
      if (i.getVisibility() != 0)
      {
        i1 = i2;
        if (k.getVisibility() != 0) {}
      }
      else
      {
        i1 = 0;
      }
    }
    g.setVisibility(i1);
  }
  
  private void k()
  {
    int i4 = 1;
    int i3 = 0;
    int i1;
    int i2;
    label44:
    label56:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(d.getText()))
    {
      i1 = 1;
      i2 = i4;
      if (i1 == 0)
      {
        if ((!y) || (J)) {
          break label99;
        }
        i2 = i4;
      }
      localObject = j;
      if (i2 == 0) {
        break label104;
      }
      i2 = i3;
      ((ImageView)localObject).setVisibility(i2);
      localDrawable = j.getDrawable();
      if (localDrawable != null) {
        if (i1 == 0) {
          break label110;
        }
      }
    }
    label99:
    label104:
    label110:
    for (Object localObject = ENABLED_STATE_SET;; localObject = EMPTY_STATE_SET)
    {
      localDrawable.setState((int[])localObject);
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label44;
      i2 = 8;
      break label56;
    }
  }
  
  private void l()
  {
    post(P);
  }
  
  private void m()
  {
    if (d.hasFocus()) {}
    for (int[] arrayOfInt = FOCUSED_STATE_SET;; arrayOfInt = EMPTY_STATE_SET)
    {
      Drawable localDrawable = f.getBackground();
      if (localDrawable != null) {
        localDrawable.setState(arrayOfInt);
      }
      localDrawable = g.getBackground();
      if (localDrawable != null) {
        localDrawable.setState(arrayOfInt);
      }
      invalidate();
      return;
    }
  }
  
  private void n()
  {
    CharSequence localCharSequence = getQueryHint();
    SearchAutoComplete localSearchAutoComplete = d;
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    localSearchAutoComplete.setHint(b((CharSequence)localObject));
  }
  
  @TargetApi(8)
  private void o()
  {
    int i2 = 1;
    d.setThreshold(L.getSuggestThreshold());
    d.setImeOptions(L.getImeOptions());
    int i3 = L.getInputType();
    int i1 = i3;
    if ((i3 & 0xF) == 1)
    {
      i3 &= 0xFFFEFFFF;
      i1 = i3;
      if (L.getSuggestAuthority() != null) {
        i1 = i3 | 0x10000 | 0x80000;
      }
    }
    d.setInputType(i1);
    if (A != null) {
      A.a(null);
    }
    if (L.getSuggestAuthority() != null)
    {
      A = new l(getContext(), this, L, R);
      d.setAdapter(A);
      l locall = (l)A;
      i1 = i2;
      if (D) {
        i1 = 2;
      }
      locall.a(i1);
    }
  }
  
  private void p()
  {
    Editable localEditable = d.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((t == null) || (!t.a(localEditable.toString()))))
    {
      if (L != null) {
        a(0, null, localEditable.toString());
      }
      setImeVisibility(false);
      q();
    }
  }
  
  private void q()
  {
    d.dismissDropDown();
  }
  
  private void r()
  {
    if (TextUtils.isEmpty(d.getText()))
    {
      if ((y) && ((u == null) || (!u.a())))
      {
        clearFocus();
        a(true);
      }
      return;
    }
    d.setText("");
    d.requestFocus();
    setImeVisibility(true);
  }
  
  private void s()
  {
    a(false);
    d.requestFocus();
    setImeVisibility(true);
    if (x != null) {
      x.onClick(this);
    }
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(O);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(O);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    d.setText(paramCharSequence);
    SearchAutoComplete localSearchAutoComplete = d;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i1 = 0;; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }
  
  @TargetApi(8)
  private void t()
  {
    if (L == null) {}
    do
    {
      return;
      Object localObject = L;
      try
      {
        if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
        {
          localObject = a(q, (SearchableInfo)localObject);
          getContext().startActivity((Intent)localObject);
          return;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w("SearchView", "Could not find voice search activity");
        return;
      }
    } while (!localActivityNotFoundException.getVoiceSearchLaunchRecognizer());
    Intent localIntent = b(r, localActivityNotFoundException);
    getContext().startActivity(localIntent);
  }
  
  private void u()
  {
    int i3;
    Rect localRect;
    int i1;
    if (l.getWidth() > 1)
    {
      Resources localResources = getContext().getResources();
      i3 = f.getPaddingLeft();
      localRect = new Rect();
      boolean bool = r.a(this);
      if (!y) {
        break label144;
      }
      i1 = localResources.getDimensionPixelSize(a.d.abc_dropdownitem_icon_width);
      i1 = localResources.getDimensionPixelSize(a.d.abc_dropdownitem_text_padding_left) + i1;
      d.getDropDownBackground().getPadding(localRect);
      if (!bool) {
        break label149;
      }
    }
    label144:
    label149:
    for (int i2 = -left;; i2 = i3 - (left + i1))
    {
      d.setDropDownHorizontalOffset(i2);
      i2 = l.getWidth();
      int i4 = left;
      int i5 = right;
      d.setDropDownWidth(i1 + (i2 + i4 + i5) - i3);
      return;
      i1 = 0;
      break;
    }
  }
  
  private void v()
  {
    a.a(d);
    a.b(d);
  }
  
  public void a()
  {
    if (J) {
      return;
    }
    J = true;
    K = d.getImeOptions();
    d.setImeOptions(K | 0x2000000);
    d.setText("");
    setIconified(false);
  }
  
  void a(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    d.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      d.setSelection(d.length());
      I = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      p();
    }
  }
  
  public void b()
  {
    a("", false);
    clearFocus();
    a(true);
    d.setImeOptions(K);
    J = false;
  }
  
  public boolean c()
  {
    return z;
  }
  
  public void clearFocus()
  {
    E = true;
    setImeVisibility(false);
    super.clearFocus();
    d.clearFocus();
    E = false;
  }
  
  void d()
  {
    a(c());
    l();
    if (d.hasFocus()) {
      v();
    }
  }
  
  public int getImeOptions()
  {
    return d.getImeOptions();
  }
  
  public int getInputType()
  {
    return d.getInputType();
  }
  
  public int getMaxWidth()
  {
    return F;
  }
  
  public CharSequence getQuery()
  {
    return d.getText();
  }
  
  public CharSequence getQueryHint()
  {
    if (C != null) {
      return C;
    }
    if ((c) && (L != null) && (L.getHintId() != 0)) {
      return getContext().getText(L.getHintId());
    }
    return s;
  }
  
  int getSuggestionCommitIconResId()
  {
    return p;
  }
  
  int getSuggestionRowLayout()
  {
    return o;
  }
  
  public android.support.v4.widget.g getSuggestionsAdapter()
  {
    return A;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(P);
    post(Q);
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (c())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default: 
      paramInt1 = i1;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (F > 0)
      {
        paramInt1 = Math.min(F, i1);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i1);
        continue;
        paramInt1 = i1;
        if (F > 0)
        {
          paramInt1 = Math.min(F, i1);
          continue;
          if (F > 0) {
            paramInt1 = F;
          } else {
            paramInt1 = getPreferredWidth();
          }
        }
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    l();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (E) {}
    while (!isFocusable()) {
      return false;
    }
    if (!c())
    {
      boolean bool = d.requestFocus(paramInt, paramRect);
      if (bool) {
        a(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    M = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      r();
      return;
    }
    s();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (y == paramBoolean) {
      return;
    }
    y = paramBoolean;
    a(paramBoolean);
    n();
  }
  
  public void setImeOptions(int paramInt)
  {
    d.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    d.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    F = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(b paramb)
  {
    u = paramb;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    v = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(c paramc)
  {
    t = paramc;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    x = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(d paramd)
  {
    w = paramd;
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    C = paramCharSequence;
    n();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    D = paramBoolean;
    l locall;
    if ((A instanceof l))
    {
      locall = (l)A;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i1 = 2;; i1 = 1)
    {
      locall.a(i1);
      return;
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    L = paramSearchableInfo;
    if (L != null)
    {
      if (c) {
        o();
      }
      n();
    }
    if ((c) && (g())) {}
    for (boolean bool = true;; bool = false)
    {
      G = bool;
      if (G) {
        d.setPrivateImeOptions("nm");
      }
      a(c());
      return;
    }
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    B = paramBoolean;
    a(c());
  }
  
  public void setSuggestionsAdapter(android.support.v4.widget.g paramg)
  {
    A = paramg;
    d.setAdapter(A);
  }
  
  public static class SearchAutoComplete
    extends AppCompatAutoCompleteTextView
  {
    private int a = getThreshold();
    private SearchView b;
    
    public SearchAutoComplete(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
    {
      this(paramContext, paramAttributeSet, a.a.autoCompleteTextViewStyle);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    private boolean a()
    {
      return TextUtils.getTrimmedLength(getText()) == 0;
    }
    
    public boolean enoughToFilter()
    {
      return (a <= 0) || (super.enoughToFilter());
    }
    
    protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
    {
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
      b.d();
    }
    
    public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        KeyEvent.DispatcherState localDispatcherState;
        if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.startTracking(paramKeyEvent, this);
          }
          return true;
        }
        if (paramKeyEvent.getAction() == 1)
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.handleUpEvent(paramKeyEvent);
          }
          if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
          {
            b.clearFocus();
            SearchView.a(b, false);
            return true;
          }
        }
      }
      return super.onKeyPreIme(paramInt, paramKeyEvent);
    }
    
    public void onWindowFocusChanged(boolean paramBoolean)
    {
      super.onWindowFocusChanged(paramBoolean);
      if ((paramBoolean) && (b.hasFocus()) && (getVisibility() == 0))
      {
        ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
        if (SearchView.a(getContext())) {
          SearchView.a.a(this, true);
        }
      }
    }
    
    public void performCompletion() {}
    
    protected void replaceText(CharSequence paramCharSequence) {}
    
    void setSearchView(SearchView paramSearchView)
    {
      b = paramSearchView;
    }
    
    public void setThreshold(int paramInt)
    {
      super.setThreshold(paramInt);
      a = paramInt;
    }
  }
  
  private static class a
  {
    private Method a;
    private Method b;
    private Method c;
    private Method d;
    
    a()
    {
      try
      {
        a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
        a.setAccessible(true);
        try
        {
          b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
          b.setAccessible(true);
          try
          {
            c = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
            c.setAccessible(true);
            try
            {
              d = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[] { Integer.TYPE, ResultReceiver.class });
              d.setAccessible(true);
              return;
            }
            catch (NoSuchMethodException localNoSuchMethodException1) {}
          }
          catch (NoSuchMethodException localNoSuchMethodException2)
          {
            for (;;) {}
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException3)
        {
          for (;;) {}
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException4)
      {
        for (;;) {}
      }
    }
    
    void a(InputMethodManager paramInputMethodManager, View paramView, int paramInt)
    {
      if (d != null) {
        try
        {
          d.invoke(paramInputMethodManager, new Object[] { Integer.valueOf(paramInt), null });
          return;
        }
        catch (Exception localException) {}
      }
      paramInputMethodManager.showSoftInput(paramView, paramInt);
    }
    
    void a(AutoCompleteTextView paramAutoCompleteTextView)
    {
      if (a != null) {}
      try
      {
        a.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
    
    void a(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
    {
      if (c != null) {}
      try
      {
        c.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
    
    void b(AutoCompleteTextView paramAutoCompleteTextView)
    {
      if (b != null) {}
      try
      {
        b.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean a();
  }
  
  public static abstract interface c
  {
    public abstract boolean a(String paramString);
    
    public abstract boolean b(String paramString);
  }
  
  public static abstract interface d
  {
    public abstract boolean a(int paramInt);
    
    public abstract boolean b(int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */