.class public Lcom/yelp/android/analytics/i;
.super Ljava/lang/Object;
.source "KahunaAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/analytics/i$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/kahuna/sdk/h;

.field private f:Lcom/yelp/android/analytics/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 36
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/analytics/i;->b:Ljava/lang/String;

    .line 43
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/analytics/i;->c:Ljava/lang/String;

    return-void

    .line 36
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

    .line 43
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

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/f;Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 8

    .prologue
    .line 60
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {p1}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/analytics/i;-><init>(Lcom/kahuna/sdk/h;Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/yelp/android/appdata/f;Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/kahuna/sdk/h;Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/yelp/android/appdata/f;Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/yelp/android/analytics/i$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/analytics/i$1;-><init>(Lcom/yelp/android/analytics/i;)V

    iput-object v0, p0, Lcom/yelp/android/analytics/i;->a:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 82
    iput-object p4, p0, Lcom/yelp/android/analytics/i;->d:Landroid/content/SharedPreferences;

    .line 83
    iput-object p1, p0, Lcom/yelp/android/analytics/i;->e:Lcom/kahuna/sdk/h;

    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/yelp/android/analytics/i;->c:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/services/push/b;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/kahuna/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    invoke-interface {p1}, Lcom/kahuna/sdk/h;->h()V

    .line 96
    const-class v0, Lcom/yelp/android/services/push/KahunaPushNotificationReceiver;

    invoke-interface {p1, v0}, Lcom/kahuna/sdk/h;->a(Ljava/lang/Class;)V

    .line 98
    invoke-interface {p1}, Lcom/kahuna/sdk/h;->c()Lcom/kahuna/sdk/i;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "username"

    invoke-virtual {p5}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kahuna/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-interface {p1, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/i;)V
    :try_end_0
    .catch Lcom/kahuna/sdk/EmptyCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p6}, Lcom/yelp/android/appdata/webrequests/co;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Location:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p6}, Lcom/yelp/android/appdata/webrequests/co;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-interface {p1}, Lcom/kahuna/sdk/h;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->Country:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p0, v0, p7}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 111
    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/i;->b:Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/services/push/b;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/kahuna/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {p2, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/analytics/i;)Lcom/yelp/android/analytics/i$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->f:Lcom/yelp/android/analytics/i$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->e:Lcom/kahuna/sdk/h;

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Ljava/util/Map;)V

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/analytics/i;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/analytics/i;)Lcom/kahuna/sdk/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->e:Lcom/kahuna/sdk/h;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/analytics/i$a;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/yelp/android/appdata/webrequests/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/be;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iget-object v1, p0, Lcom/yelp/android/analytics/i;->a:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, p1, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/appdata/webrequests/be;Lcom/yelp/android/analytics/i$a;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 141
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->e:Lcom/kahuna/sdk/h;

    invoke-virtual {p1}, Lcom/yelp/android/analytics/iris/KahunaEventIri;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/be;Lcom/yelp/android/analytics/i$a;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iput-object p2, p0, Lcom/yelp/android/analytics/i;->f:Lcom/yelp/android/analytics/i$a;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/analytics/i;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "migration_complete"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/analytics/i;->e:Lcom/kahuna/sdk/h;

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1, p3}, Lcom/yelp/android/appdata/webrequests/be;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 152
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/be;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-interface {p2}, Lcom/yelp/android/analytics/i$a;->a()V

    goto :goto_0
.end method
