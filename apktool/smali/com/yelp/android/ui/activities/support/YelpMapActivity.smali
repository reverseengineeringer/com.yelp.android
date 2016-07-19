.class public abstract Lcom/yelp/android/ui/activities/support/YelpMapActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "YelpMapActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$d;
.implements Lcom/yelp/android/ui/map/f$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/map/f;


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
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/f;->a(Lcom/google/android/gms/maps/MapView;)V

    .line 42
    return-void
.end method

.method protected final m()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->e()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/yelp/android/ui/map/f;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/ui/map/f;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/map/f$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    .line 37
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x402

    if-ne p1, v0, :cond_0

    .line 85
    const-string/jumbo v0, "extra.services_not_available"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/as;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 88
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
    .line 58
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->c()V

    .line 60
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onLowMemory()V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->d()V

    .line 72
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->b()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/f;->a()V

    .line 48
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpMapActivity;->a:Lcom/yelp/android/ui/map/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/map/f;->a(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
