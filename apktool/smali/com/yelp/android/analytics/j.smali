.class public Lcom/yelp/android/analytics/j;
.super Ljava/lang/Object;
.source "KahunaAnalyticsManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 24
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/analytics/j;->a:Ljava/lang/String;

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/analytics/j;->b:Ljava/lang/String;

    return-void

    .line 24
    nop

    :array_0
    .array-data 2
        0x34s
        0x65s
        0x38s
        0x39s
        0x37s
        0x30s
        0x36s
        0x33s
        0x66s
        0x31s
        0x66s
        0x39s
        0x34s
        0x32s
        0x34s
        0x34s
        0x39s
        0x35s
        0x35s
        0x31s
        0x36s
        0x61s
        0x61s
        0x30s
        0x30s
        0x36s
        0x66s
        0x38s
        0x39s
        0x61s
        0x62s
        0x32s
    .end array-data

    .line 28
    :array_1
    .array-data 2
        0x36s
        0x35s
        0x32s
        0x31s
        0x61s
        0x32s
        0x39s
        0x63s
        0x35s
        0x31s
        0x63s
        0x63s
        0x34s
        0x36s
        0x30s
        0x30s
        0x39s
        0x37s
        0x39s
        0x61s
        0x64s
        0x62s
        0x38s
        0x32s
        0x35s
        0x30s
        0x35s
        0x37s
        0x32s
        0x39s
        0x37s
        0x36s
    .end array-data
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "beta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/yelp/android/analytics/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/services/push/d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    invoke-static {}, Lcom/kahuna/sdk/h;->m()V

    .line 47
    const-class v1, Lcom/yelp/android/services/push/KahunaPushNotificationReceiver;

    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Ljava/lang/Class;)V

    .line 48
    const-string/jumbo v1, "username"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Location:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-static {}, Lcom/kahuna/sdk/h;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/yelp/android/analytics/j;->b()V

    .line 59
    return-void

    .line 39
    :cond_0
    sget-object v1, Lcom/yelp/android/analytics/j;->a:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/services/push/d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/analytics/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/analytics/iris/KahunaEventIri;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/yelp/android/analytics/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cr;

    new-instance v1, Lcom/yelp/android/analytics/k;

    invoke-direct {v1}, Lcom/yelp/android/analytics/k;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cr;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cr;->executeWithLocation([Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Ljava/util/Map;)V

    .line 77
    :cond_0
    return-void
.end method
