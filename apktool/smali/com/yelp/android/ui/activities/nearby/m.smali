.class Lcom/yelp/android/ui/activities/nearby/m;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/m;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/m;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/m;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->requestFocusFromTouch()Z

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/m;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method
