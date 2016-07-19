.class Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

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
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->requestFocusFromTouch()Z

    .line 110
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method
