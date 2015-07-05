.class public Lcom/adjust/sdk/q;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# direct methods
.method protected static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    and-int/lit8 v0, p0, 0xf

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 112
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const-string/jumbo v0, "phone"

    goto :goto_0

    .line 110
    :pswitch_1
    const-string/jumbo v0, "tablet"

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    sget-object v0, Lcom/adjust/sdk/q;->a:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/q;->a:Ljava/text/SimpleDateFormat;

    .line 317
    :cond_0
    sget-object v0, Lcom/adjust/sdk/q;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 63
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 66
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 67
    invoke-static {p0}, Lcom/adjust/sdk/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 68
    invoke-static {p0}, Lcom/adjust/sdk/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 69
    invoke-static {v0}, Lcom/adjust/sdk/q;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 70
    invoke-static {}, Lcom/adjust/sdk/q;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 71
    invoke-static {}, Lcom/adjust/sdk/q;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 72
    invoke-static {}, Lcom/adjust/sdk/q;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 73
    invoke-static {v2}, Lcom/adjust/sdk/q;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 74
    invoke-static {v2}, Lcom/adjust/sdk/q;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/16 v2, 0x8

    .line 75
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x9

    .line 76
    invoke-static {v0}, Lcom/adjust/sdk/q;->c(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v0, 0xa

    .line 77
    invoke-static {v1}, Lcom/adjust/sdk/q;->a(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0xb

    .line 78
    invoke-static {v1}, Lcom/adjust/sdk/q;->b(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0xc

    .line 79
    invoke-static {v1}, Lcom/adjust/sdk/q;->c(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 81
    const-string/jumbo v0, " "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "unknown"

    .line 182
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const/16 v1, 0x8c

    if-ge v0, v1, :cond_1

    .line 178
    const-string/jumbo v0, "low"

    goto :goto_0

    .line 179
    :cond_1
    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 180
    const-string/jumbo v0, "high"

    goto :goto_0

    .line 182
    :cond_2
    const-string/jumbo v0, "medium"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    if-nez p0, :cond_1

    .line 301
    const/4 p0, 0x0

    .line 310
    :cond_0
    :goto_0
    return-object p0

    .line 304
    :cond_1
    const-string/jumbo v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 214
    :cond_0
    const-string/jumbo v0, "\\s"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/adjust/sdk/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    and-int/lit8 v0, p0, 0xf

    .line 143
    packed-switch v0, :pswitch_data_0

    .line 153
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    .line 147
    :pswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 149
    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    .line 151
    :pswitch_3
    const-string/jumbo v0, "xlarge"

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/adjust/sdk/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "android"

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    and-int/lit8 v0, p0, 0x30

    .line 160
    sparse-switch v0, :sswitch_data_0

    .line 166
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 162
    :sswitch_0
    const-string/jumbo v0, "long"

    goto :goto_0

    .line 164
    :sswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    const-string/jumbo v2, "aid"

    .line 252
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 253
    const-string/jumbo v4, "aid"

    aput-object v4, v2, v3

    .line 255
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 257
    if-nez v1, :cond_0

    move-object v0, v6

    .line 269
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    const-string/jumbo v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 269
    goto :goto_0
.end method

.method private static c(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string/jumbo v0, "zz"

    invoke-static {p0, v0}, Lcom/adjust/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    :try_start_0
    invoke-static {p0}, Lcom/adjust/sdk/q;->h(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 326
    const-string/jumbo v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 328
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 337
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 342
    :try_start_0
    invoke-static {p0}, Lcom/adjust/sdk/q;->h(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 346
    const-string/jumbo v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 348
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    check-cast v0, Ljava/lang/Boolean;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 357
    :goto_0
    return v0

    .line 352
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    .line 357
    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 95
    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    new-array v1, v4, [Ljava/lang/Class;

    .line 364
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    .line 366
    const-string/jumbo v2, "getAdvertisingIdInfo"

    .line 365
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 368
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    return-object v0
.end method
