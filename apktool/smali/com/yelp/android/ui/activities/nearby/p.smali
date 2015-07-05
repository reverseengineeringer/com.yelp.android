.class Lcom/yelp/android/ui/activities/nearby/p;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/map/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/p;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/m;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/p;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/p;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/serializable/by;)V

    .line 322
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/p;->b(Lcom/yelp/android/serializable/by;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/by;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/p;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(Lcom/yelp/android/serializable/by;)V

    .line 327
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Lcom/yelp/android/serializable/by;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/p;->a(Lcom/yelp/android/serializable/by;)V

    return-void
.end method
