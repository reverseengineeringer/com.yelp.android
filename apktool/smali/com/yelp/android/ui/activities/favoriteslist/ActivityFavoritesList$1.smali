.class Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;
.super Ljava/lang/Object;
.source "ActivityFavoritesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a()V
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
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/bw;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/bw;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FavoritesList;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->d(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/bw;-><init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/appdata/webrequests/bw;)Lcom/yelp/android/appdata/webrequests/bw;

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/bw;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bw;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bw;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$1;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/appdata/webrequests/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/bw;->b()Lcom/yelp/android/appdata/webrequests/bw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/appdata/webrequests/bw;)Lcom/yelp/android/appdata/webrequests/bw;

    goto :goto_0
.end method
