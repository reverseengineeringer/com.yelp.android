.class Lcom/yelp/android/ui/activities/favoriteslist/a$3;
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

.field final synthetic b:Lcom/yelp/android/ui/activities/favoriteslist/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/favoriteslist/a;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$3;->b:Lcom/yelp/android/ui/activities/favoriteslist/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$3;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$3;->b:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/a;->b(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$3;->b:Lcom/yelp/android/ui/activities/favoriteslist/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/favoriteslist/a;->b(Lcom/yelp/android/ui/activities/favoriteslist/a;)Lcom/yelp/android/ui/activities/favoriteslist/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/favoriteslist/a$3;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/favoriteslist/a$a;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 140
    :cond_0
    return-void
.end method
