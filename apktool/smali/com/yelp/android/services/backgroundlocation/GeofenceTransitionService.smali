.class public Lcom/yelp/android/services/backgroundlocation/GeofenceTransitionService;
.super Landroid/app/IntentService;
.source "GeofenceTransitionService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "GeofenceTransitionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/location/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/services/backgroundlocation/a;->a(Lcom/google/android/gms/location/h;)V

    .line 23
    return-void
.end method
