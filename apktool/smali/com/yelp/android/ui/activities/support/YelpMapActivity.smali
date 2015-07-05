.class public abstract Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "YelpMapActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/n;
.implements Lcom/yelp/android/ui/map/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/map/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/g;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/yelp/android/ui/map/g;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/map/g;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/map/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    .line 39
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    const/16 v0, 0x3fe

    if-ne p1, v0, :cond_0

    .line 87
    const-string/jumbo v0, "extra.services_not_available"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->c()V

    .line 62
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onLowMemory()V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->d()V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->b()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->a()V

    .line 50
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/g;->a(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method protected final p()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/g;->e()Z

    move-result v0

    return v0
.end method
