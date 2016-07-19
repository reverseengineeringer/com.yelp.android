.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V
    .locals 0

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/ReservationFilter;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, p2, v3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/ReservationFilter;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 1810
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "promoted_filter"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 1811
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "reservation"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 1812
    return-void
.end method
