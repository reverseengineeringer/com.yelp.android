.class Lcom/yelp/android/services/backgroundlocation/b$2;
.super Ljava/lang/Object;
.source "FusedLocationHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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
    .line 108
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/b$2;->a:Lcom/yelp/android/services/backgroundlocation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "BackgroundLocation"

    const-string/jumbo v1, "Connection failed"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 112
    return-void
.end method
