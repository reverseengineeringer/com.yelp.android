package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable.Creator;
import android.text.Html;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.Passport;

public class FavoritesListShareFormatter
  extends ShareFormatter<FavoritesList>
{
  public static final Parcelable.Creator<FavoritesListShareFormatter> CREATOR = new FavoritesListShareFormatter.1();
  
  public FavoritesListShareFormatter(FavoritesList paramFavoritesList)
  {
    super(paramFavoritesList);
  }
  
  protected Uri a()
  {
    return Uri.parse(((FavoritesList)c()).b());
  }
  
  public String a(Context paramContext)
  {
    return paramContext.getString(2131165625, new Object[] { ((FavoritesList)c()).d(), ((FavoritesList)c()).g().n(), ((FavoritesList)c()).g().m() });
  }
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    if (parama.e())
    {
      paramIntent.putExtra("android.intent.extra.SUBJECT", a(paramContext));
      paramIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(paramContext.getString(2131165625, new Object[] { e.a(((FavoritesList)c()).d(), a().toString()), ((FavoritesList)c()).g().n(), ((FavoritesList)c()).g().m() })));
      return;
    }
    super.a(paramContext, parama, paramIntent);
  }
  
  public g.a b()
  {
    return new g.a().a(EventIri.FavoritesListShare).a("list_id", ((FavoritesList)c()).e());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.FavoritesListShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */