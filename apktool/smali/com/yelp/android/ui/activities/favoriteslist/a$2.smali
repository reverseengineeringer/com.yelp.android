.class Lcom/yelp/android/ui/activities/favoriteslist/a$2;
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

.field final synthetic b:Lcom/yelp/android/serializable/YelpBusinessReview;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yelp/android/ui/activities/favoriteslist/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->d:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/favoriteslist/a;->a(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/serializable/FavoritesList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FavoritesList;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/ActivityFavoritesList;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "review_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListReview:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$2;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
