.class Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;
.super Ljava/lang/Object;
.source "ActivityFavoritesList.java"

# interfaces
.implements Lcom/yelp/android/util/c$a;


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
    .line 303
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->j(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList$5;->a:Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->h(Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;)Lcom/yelp/android/ui/activities/favoriteslist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/favoriteslist/a;->notifyDataSetChanged()V

    .line 309
    return-void
.end method
