.class Lcom/yelp/android/ui/activities/events/s;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/map/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/f",
        "<",
        "Lcom/yelp/android/serializable/by;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/s;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/by;)V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 908
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/s;->b(Lcom/yelp/android/serializable/by;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/by;)V
    .locals 3

    .prologue
    .line 916
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 917
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/s;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/s;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 908
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/s;->a(Lcom/yelp/android/serializable/by;)V

    return-void
.end method
