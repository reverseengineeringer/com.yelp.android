package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Movie;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class i
  extends w<Movie>
{
  private final java.text.DateFormat a;
  private final Calendar b;
  private final t c;
  
  public i(t paramt, List<Movie> paramList)
  {
    c = paramt;
    a(paramList);
    a = android.text.format.DateFormat.getTimeFormat(AppData.b());
    b = Calendar.getInstance(Locale.getDefault());
  }
  
  private static String a(Movie paramMovie)
  {
    int i = paramMovie.c() / 60;
    int j = paramMovie.c() % 60;
    paramMovie = AppData.b();
    if (i > 0) {
      return paramMovie.getString(2131165997, new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    }
    return paramMovie.getString(2131166158, new Object[] { Integer.valueOf(j) });
  }
  
  private void a(i.a parama, Movie paramMovie)
  {
    c.a(paramMovie.e()).a(2130838445).a(a);
    b.setText(paramMovie.g());
    AppData localAppData = AppData.b();
    if (TextUtils.isEmpty(paramMovie.f()))
    {
      c.setVisibility(8);
      if (paramMovie.c() <= 0) {
        break label150;
      }
      d.setText(Html.fromHtml(localAppData.getString(2131166184, new Object[] { a(paramMovie) })));
      d.setVisibility(0);
    }
    for (;;)
    {
      e.setText(b(paramMovie));
      return;
      c.setText(Html.fromHtml(localAppData.getString(2131166183, new Object[] { paramMovie.f() })));
      c.setVisibility(0);
      break;
      label150:
      d.setVisibility(8);
    }
  }
  
  private String b(Movie paramMovie)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramMovie.b().length)
    {
      b.clear();
      b.add(12, paramMovie.b()[i]);
      localArrayList.add(a.format(b.getTime()));
      i += 1;
    }
    return TextUtils.join(", ", localArrayList).toLowerCase(Locale.getDefault());
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903294, paramViewGroup, false);
      paramView = new i.a(localView);
      localView.setTag(paramView);
      paramViewGroup = paramView;
    }
    for (;;)
    {
      a(paramViewGroup, (Movie)getItem(paramInt));
      return localView;
      paramViewGroup = (i.a)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */