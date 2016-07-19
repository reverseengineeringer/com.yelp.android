.class public Lcom/yelp/android/services/push/AccountPushRegistrationService;
.super Landroid/app/IntentService;
.source "AccountPushRegistrationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "AccountConfigSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    move v2, v0

    .line 49
    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    .line 51
    :try_start_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/aq;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, p1, v5}, Lcom/yelp/android/appdata/webrequests/aq;-><init>(Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/aq;->i()Ljava/lang/Object;

    .line 55
    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/appdata/c;->a(Ljava/util/Locale;)V
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x1

    .line 68
    :cond_0
    return v0

    .line 58
    :catch_0
    move-exception v1

    .line 60
    instance-of v1, v1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v1, :cond_0

    .line 64
    mul-int/lit16 v1, v2, 0x14d

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/services/push/b;->g()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-direct {p0, v1}, Lcom/yelp/android/services/push/AccountPushRegistrationService;->a(Ljava/lang/String;)Z

    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Z)V

    goto :goto_0
.end method
