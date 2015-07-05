.class Lcom/yelp/android/ui/activities/events/a;
.super Ljava/lang/Object;
.source "ActivityMapForEvent.java"

# interfaces
.implements Lcom/yelp/android/ui/map/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/f",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/a;->a:Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/a;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a;->a:Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->finish()V

    .line 98
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/a;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method
