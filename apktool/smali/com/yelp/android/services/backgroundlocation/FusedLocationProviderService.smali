.class public Lcom/yelp/android/services/backgroundlocation/FusedLocationProviderService;
.super Landroid/app/IntentService;
.source "FusedLocationProviderService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "FusedLocationProviderIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {p1}, Lcom/yelp/android/services/backgroundlocation/b;->a(Landroid/content/Intent;)Landroid/location/Location;

    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/location/LocationResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationResult;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationResult;->a()Landroid/location/Location;

    move-result-object v0

    .line 35
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/services/backgroundlocation/a;->a(Landroid/location/Location;)V

    goto :goto_0
.end method
