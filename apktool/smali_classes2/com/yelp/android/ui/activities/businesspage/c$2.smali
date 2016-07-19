.class Lcom/yelp/android/ui/activities/businesspage/c$2;
.super Ljava/lang/Object;
.source "BusinessListButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/ui/activities/businesspage/h;Lcom/yelp/android/ui/activities/businesspage/c$a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/h;

.field final synthetic b:Lcom/yelp/android/serializable/ReservationSearchAction;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yelp/android/ui/activities/businesspage/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/c;Lcom/yelp/android/ui/activities/businesspage/h;Lcom/yelp/android/serializable/ReservationSearchAction;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->d:Lcom/yelp/android/ui/activities/businesspage/c;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/h;->b()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->d:Lcom/yelp/android/ui/activities/businesspage/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/ui/activities/businesspage/c;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/util/Map;

    move-result-object v1

    .line 252
    const-string/jumbo v0, "source"

    const-string/jumbo v2, "promoted"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v2, "is_using_time_slot"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/businesspage/h;->b()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v2

    const-string/jumbo v3, "source_vertical_business_page"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/c$2;->b:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;Lcom/yelp/android/serializable/ReservationSearchAction;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
