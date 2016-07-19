.class Lcom/yelp/android/ui/activities/favoriteslist/a$1;
.super Ljava/lang/Object;
.source "FavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/favoriteslist/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/ui/activities/favoriteslist/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->c:Lcom/yelp/android/ui/activities/favoriteslist/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->c:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FavoritesList;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
