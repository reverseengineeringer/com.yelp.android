.class public abstract Lcom/yelp/android/ui/util/YelpMapFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "YelpMapFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/map/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpFragment;",
        "Lcom/yelp/android/ui/map/i;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/map/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0c02f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/map/YelpMap;

    iput-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    .line 85
    return-void
.end method

.method public e()Lcom/yelp/android/ui/map/g;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->b:Lcom/yelp/android/ui/map/g;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->b:Lcom/yelp/android/ui/map/g;

    iget-object v1, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/map/YelpMap;->getMapView()Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/g;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 89
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/YelpMapFragment;->c(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->f()V

    .line 36
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Lcom/yelp/android/ui/map/g;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/map/g;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/map/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->b:Lcom/yelp/android/ui/map/g;

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->d()V

    .line 54
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onLowMemory()V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->e()V

    .line 66
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->b()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->c()V

    .line 42
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
