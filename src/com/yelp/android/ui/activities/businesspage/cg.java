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
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class cg
  extends au<Movie>
{
  private final java.text.DateFormat a;
  private final Calendar b;
  
  public cg(List<Movie> paramList)
  {
    a(paramList);
    a = android.text.format.DateFormat.getTimeFormat(AppData.b());
    b = Calendar.getInstance(Locale.getDefault());
  }
  
  private static String a(Movie paramMovie)
  {
    int i = paramMovie.getRuntime() / 60;
    int j = paramMovie.getRuntime() % 60;
    paramMovie = AppData.b();
    if (i > 0) {
      return paramMovie.getString(2131165932, new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    }
    return paramMovie.getString(2131166096, new Object[] { Integer.valueOf(j) });
  }
  
  private void a(ch paramch, Movie paramMovie)
  {
    a.setImageUrl(paramMovie.getImageUrl(), 2130838178);
    a.setLoadingDrawable(2130838178);
    b.setText(paramMovie.getTitle());
    AppData localAppData = AppData.b();
    if (TextUtils.isEmpty(paramMovie.getRating()))
    {
      c.setVisibility(8);
      if (paramMovie.getRuntime() <= 0) {
        break label149;
      }
      d.setText(Html.fromHtml(localAppData.getString(2131166130, new Object[] { a(paramMovie) })));
      d.setVisibility(0);
    }
    for (;;)
    {
      e.setText(b(paramMovie));
      return;
      c.setText(Html.fromHtml(localAppData.getString(2131166129, new Object[] { paramMovie.getRating() })));
      c.setVisibility(0);
      break;
      label149:
      d.setVisibility(8);
    }
  }
  
  private String b(Movie paramMovie)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramMovie.getShowtimes().length)
    {
      b.clear();
      b.add(12, paramMovie.getShowtimes()[i]);
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
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903244, paramViewGroup, false);
      paramView = new ch(localView);
      localView.setTag(paramView);
      paramViewGroup = paramView;
    }
    for (;;)
    {
      a(paramViewGroup, (Movie)getItem(paramInt));
      return localView;
      paramViewGroup = (ch)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */