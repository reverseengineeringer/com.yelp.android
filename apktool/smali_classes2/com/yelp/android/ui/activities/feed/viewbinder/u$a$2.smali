.class Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;
.super Ljava/lang/Object;
.source "ReservationSearchFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/BusinessSearchResult;

.field final synthetic b:Lcom/yelp/android/serializable/ReservationSearchAction;

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/ReservationSearchAction;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/u$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/util/Map;

    move-result-object v1

    .line 158
    const-string/jumbo v2, "is_using_time_slot"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FeedNearbyReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    const-string/jumbo v3, "source_feed"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/u$a$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
