.class Lcom/yelp/android/appdata/u;
.super Ljava/lang/Object;
.source "GooglePlayLocationService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/s;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/appdata/u;->a:Lcom/yelp/android/appdata/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
