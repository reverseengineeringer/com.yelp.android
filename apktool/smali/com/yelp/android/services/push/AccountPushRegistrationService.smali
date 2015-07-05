.class public Lcom/yelp/android/services/push/AccountPushRegistrationService;
.super Landroid/app/IntentService;
.source "AccountPushRegistrationService.java"


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "AccountConfigSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/yelp/android/services/push/a;

    const-string/jumbo v1, "AccountPushRegistrationService"

    invoke-direct {v0, v1}, Lcom/yelp/android/services/push/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/AccountPushRegistrationService;->a:Lcom/yelp/android/appdata/webrequests/m;

    .line 31
    return-void
.end method


# virtual methods
.method a(Lcom/yelp/android/appdata/webrequests/at;Lcom/yelp/android/appdata/AppData;I)V
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x4

    if-le p3, v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/at;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v0, :cond_0

    .line 55
    mul-int/lit16 v0, p3, 0x14d

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 56
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/services/push/AccountPushRegistrationService;->a(Lcom/yelp/android/appdata/webrequests/at;Lcom/yelp/android/appdata/AppData;I)V

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/push/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Lcom/yelp/android/appdata/webrequests/at;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/n;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/services/push/AccountPushRegistrationService;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/yelp/android/appdata/webrequests/at;-><init>(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/services/push/AccountPushRegistrationService;->a(Lcom/yelp/android/appdata/webrequests/at;Lcom/yelp/android/appdata/AppData;I)V

    .line 45
    :cond_0
    return-void
.end method
