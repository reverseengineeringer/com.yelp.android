.class Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;
.super Ljava/lang/Object;
.source "ActivityFavoritesList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/FavoritesList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/FavoritesList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/FavoritesList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/serializable/FavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->disableLoading()V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->clearError()V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->f(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->g(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/activities/favoriteslist/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(Lcom/yelp/android/serializable/FavoritesList;)V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->i(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)V

    .line 282
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FavoritesList;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FavoritesList;->a(Ljava/util/List;)V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FavoritesList;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FavoritesList;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->e(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 262
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 257
    check-cast p2, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/FavoritesList;)V

    return-void
.end method
