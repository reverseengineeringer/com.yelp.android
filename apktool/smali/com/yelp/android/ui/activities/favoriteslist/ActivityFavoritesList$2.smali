.class Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;
.super Ljava/lang/Object;
.source "ActivityFavoritesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b()V
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
    .line 229
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->c(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 234
    const-string/jumbo v2, "list_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$2;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->b(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v2, "user_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method
