.class public Lcom/yelp/android/bb/e;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/yelp/android/bb/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/yelp/android/bb/b;
    .locals 1

    invoke-static {p1}, Lcom/yelp/android/bb/b$a;->a(Landroid/os/IBinder;)Lcom/yelp/android/bb/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yelp/android/bb/e;->a(Landroid/os/IBinder;)Lcom/yelp/android/bb/b;

    move-result-object v0

    return-object v0
.end method
