.class Lcom/yelp/android/services/backgroundlocation/b$1;
.super Ljava/lang/Object;
.source "FusedLocationHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/backgroundlocation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/backgroundlocation/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/backgroundlocation/b;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/b$1;->a:Lcom/yelp/android/services/backgroundlocation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/services/backgroundlocation/b$1;->a:Lcom/yelp/android/services/backgroundlocation/b;

    invoke-static {v0}, Lcom/yelp/android/services/backgroundlocation/b;->a(Lcom/yelp/android/services/backgroundlocation/b;)V

    .line 99
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Connection suspended"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 104
    return-void
.end method
