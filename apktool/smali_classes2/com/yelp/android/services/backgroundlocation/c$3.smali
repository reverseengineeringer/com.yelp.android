.class Lcom/yelp/android/services/backgroundlocation/c$3;
.super Ljava/lang/Object;
.source "GeofenceHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/backgroundlocation/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/backgroundlocation/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/backgroundlocation/c;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yelp/android/services/backgroundlocation/c$3;->a:Lcom/yelp/android/services/backgroundlocation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .prologue
    .line 186
    const-string/jumbo v0, "BackgroundLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect to Google Api with errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    .line 190
    return-void
.end method
