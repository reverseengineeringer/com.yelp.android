.class public Lcom/crashlytics/android/answers/a;
.super Lio/fabric/sdk/android/h;
.source "Answers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/crashlytics/android/answers/m;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/yelp/android/cu/b;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 185
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/answers/p;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/p;-><init>()V

    .line 186
    new-instance v1, Lio/fabric/sdk/android/services/common/p;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/p;-><init>()V

    .line 187
    new-instance v2, Lcom/yelp/android/ct/l;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->i()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "session_analytics.tap"

    const-string/jumbo v6, "session_analytics_to_send"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/yelp/android/ct/l;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v12, Lcom/crashlytics/android/answers/k;

    invoke-direct {v12, p1, v0, v1, v2}, Lcom/crashlytics/android/answers/k;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/p;Lio/fabric/sdk/android/services/common/j;Lcom/yelp/android/ct/g;)V

    .line 193
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->A()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->g()Ljava/util/Map;

    move-result-object v2

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->b()Ljava/lang/String;

    move-result-object v3

    .line 200
    sget-object v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 202
    sget-object v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    sget-object v6, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->d()Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->e()Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    new-instance v0, Lcom/crashlytics/android/answers/o;

    iget-object v10, p0, Lcom/crashlytics/android/answers/a;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/crashlytics/android/answers/a;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/crashlytics/android/answers/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 219
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 221
    new-instance v2, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    invoke-static {v1, v0, v12, v2}, Lcom/crashlytics/android/answers/c;->a(Landroid/app/Application;Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)Lcom/crashlytics/android/answers/c;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    .line 230
    :goto_0
    iget-wide v0, p0, Lcom/crashlytics/android/answers/a;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "First launch"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/m;->b()V

    .line 233
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->d:Lcom/yelp/android/cu/b;

    iget-object v1, p0, Lcom/crashlytics/android/answers/a;->d:Lcom/yelp/android/cu/b;

    invoke-interface {v1}, Lcom/yelp/android/cu/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/cu/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 240
    :cond_0
    :goto_1
    return-void

    .line 225
    :cond_1
    new-instance v1, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    invoke-static {p1, v0, v12, v1}, Lcom/crashlytics/android/answers/m;->a(Landroid/content/Context;Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)Lcom/crashlytics/android/answers/m;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string/jumbo v1, "Crashlytics failed to initialize session analytics."

    invoke-static {p1, v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static c()Lcom/crashlytics/android/answers/a;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/crashlytics/android/answers/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, "1.2.2.56"

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/common/i$a;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/i$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/m;->a(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Lio/fabric/sdk/android/services/common/i$b;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/i$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/m;->b(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method a(J)Z
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method b(J)Z
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 273
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c_()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    :try_start_0
    new-instance v1, Lcom/yelp/android/cu/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/cu/c;-><init>(Lio/fabric/sdk/android/h;)V

    iput-object v1, p0, Lcom/crashlytics/android/answers/a;->d:Lcom/yelp/android/cu/b;

    .line 120
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 126
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/a;->b:Ljava/lang/String;

    .line 127
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "0.0"

    :goto_0
    iput-object v1, p0, Lcom/crashlytics/android/answers/a;->c:Ljava/lang/String;

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    .line 131
    iget-wide v2, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v2, p0, Lcom/crashlytics/android/answers/a;->j:J

    .line 137
    :goto_1
    const/4 v0, 0x1

    .line 141
    :goto_2
    return v0

    .line 127
    :cond_0
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/crashlytics/android/answers/a;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string/jumbo v3, "Answers"

    const-string/jumbo v4, "Error setting up app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected e()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/a;->a(Landroid/content/Context;)V

    .line 150
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v1

    .line 151
    if-nez v1, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v2, v1, Lio/fabric/sdk/android/services/settings/s;->d:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/settings/m;->d:Z

    if-eqz v2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/s;->e:Lio/fabric/sdk/android/services/settings/b;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/m;->a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    const-string/jumbo v1, "Disabling analytics collection based on settings flag value."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/m;->a()V

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Z
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->d:Lcom/yelp/android/cu/b;

    invoke-interface {v0}, Lcom/yelp/android/cu/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method i()Ljava/io/File;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/yelp/android/cu/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/cu/a;-><init>(Lio/fabric/sdk/android/h;)V

    invoke-virtual {v0}, Lcom/yelp/android/cu/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
