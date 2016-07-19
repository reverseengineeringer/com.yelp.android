.class Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;
.super Ljava/lang/Object;
.source "ActivityFavoritesList.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/favoriteslist/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 291
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 292
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListClickBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$4;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->k(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/util/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 299
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method
