.class public Lcom/yelp/android/services/f;
.super Ljava/lang/Object;
.source "UtilDates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/f$a;
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;J)Lcom/yelp/android/services/f$a;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;J)Lcom/yelp/android/services/f$a;
    .locals 17

    .prologue
    .line 271
    invoke-static/range {p2 .. p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 272
    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 273
    new-instance v10, Lcom/yelp/android/services/f$a;

    invoke-direct {v10}, Lcom/yelp/android/services/f$a;-><init>()V

    .line 274
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 275
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->a(Z)V

    move-object v2, v10

    .line 342
    :goto_0
    return-object v2

    .line 279
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/yelp/android/services/f;->a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->e(Z)V

    .line 281
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 288
    const/4 v3, 0x0

    .line 289
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/f;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/services/f;->d(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 291
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/f;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/services/f;->d(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 293
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v8, v2, :cond_3

    .line 294
    aget-object v2, p1, v8

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/f;->a(JJJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 295
    if-eqz v9, :cond_2

    .line 296
    const-string/jumbo v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    aget-object v2, p1, v8

    move-object/from16 v0, p0

    invoke-static {v0, v2, v11}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v3, 0x1

    .line 293
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto :goto_1

    .line 304
    :cond_3
    if-eqz v9, :cond_5

    .line 305
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->a(Ljava/lang/String;)V

    .line 309
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->a(Z)V

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->d(Z)V

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->c(Z)V

    .line 315
    invoke-virtual {v10}, Lcom/yelp/android/services/f$a;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->b(Z)V

    :cond_4
    :goto_4
    move-object v2, v10

    .line 342
    goto :goto_0

    .line 307
    :cond_5
    const-string/jumbo v2, ""

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 318
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/f$a;->b(Z)V

    .line 319
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/f;->d(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 320
    const/4 v4, 0x0

    move v8, v4

    :goto_5
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v8, v4, :cond_4

    .line 321
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-long v12, v4

    .line 322
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-long v14, v4

    .line 324
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v4

    int-to-long v4, v4

    aget-object v6, p1, v8

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/f;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 327
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/f$a;->b(Z)V

    .line 328
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v4

    int-to-long v6, v4

    move-wide v4, v14

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/f;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/f$a;->d(Z)V

    .line 330
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v2

    invoke-virtual {v10, v2, v3}, Lcom/yelp/android/services/f$a;->b(J)V

    goto :goto_4

    .line 333
    :cond_7
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v4

    int-to-long v6, v4

    move-wide v4, v12

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/f;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 335
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/f$a;->c(Z)V

    .line 336
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v2

    invoke-virtual {v10, v2, v3}, Lcom/yelp/android/services/f$a;->a(J)V

    goto/16 :goto_4

    .line 320
    :cond_8
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_5

    :cond_9
    move v3, v9

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 387
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 388
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v0

    invoke-static {v0, v3}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v1

    invoke-static {v1, v3}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 391
    const-string/jumbo v1, ""

    .line 392
    const-string/jumbo v1, ""

    .line 393
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 394
    invoke-static {v7, v4}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    .line 395
    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 397
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-static {p0, v0}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {p0, v2}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 410
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    invoke-virtual {v3, v2, v6, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 413
    const v2, 0x7f07045c

    .line 414
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "[^0-9]*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    const v2, 0x7f07045d

    .line 418
    :cond_0
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 362
    const-string/jumbo v0, ""

    .line 363
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 364
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 367
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 368
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 369
    if-ne v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 371
    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 104
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 106
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1, p1}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 473
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    .line 346
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 348
    div-int/lit16 v1, p0, 0x5a0

    .line 349
    rem-int/lit16 v2, p0, 0x5a0

    .line 350
    div-int/lit8 v3, v2, 0x3c

    .line 351
    rem-int/lit8 v2, v2, 0x3c

    .line 353
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 355
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 357
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 358
    return-object v0
.end method

.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 45
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 50
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 54
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 3

    .prologue
    const/16 v1, 0xb

    .line 221
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 223
    if-lt v0, p2, :cond_1

    if-ge v0, p3, :cond_1

    .line 224
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 225
    invoke-static {v0, p1}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    :cond_0
    :goto_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    .line 235
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    .line 236
    return-object p0

    .line 228
    :cond_1
    invoke-virtual {p0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 229
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 230
    if-lt v0, p3, :cond_0

    .line 231
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .prologue
    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 187
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 188
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 189
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public static a(Ljava/util/Date;I)Ljava/util/Date;
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rem-int/2addr v1, p1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    sub-int v1, p1, v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 173
    :cond_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 174
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 175
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public static a(JJJ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    cmp-long v2, p4, p2

    if-lez v2, :cond_1

    .line 150
    cmp-long v2, p2, p0

    if-gtz v2, :cond_0

    cmp-long v2, p0, p4

    if-gtz v2, :cond_0

    .line 152
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    cmp-long v2, p2, p0

    if-lez v2, :cond_2

    cmp-long v2, p0, p4

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x7

    .line 451
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 452
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 453
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 455
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 456
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 457
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 459
    if-ne v0, v3, :cond_0

    if-ne v1, v4, :cond_0

    if-ne v2, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x40f5180000000000L    # 86400.0

    div-double/2addr v2, v4

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a([I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 35
    array-length v4, p0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget v5, p0, v2

    .line 36
    if-ne v3, v5, :cond_2

    move v0, v1

    .line 37
    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 422
    array-length v0, p0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return v4

    .line 428
    :cond_0
    aget-object v0, p0, v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v0

    invoke-static {v0, p1}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 430
    aget-object v1, p0, v4

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v1

    invoke-static {v1, p1}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 432
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_3

    .line 436
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpHoursPair;->c()I

    move-result v5

    invoke-static {v5, p1}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 437
    invoke-static {v5, v3}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v4

    .line 447
    :goto_2
    if-eqz v1, :cond_2

    invoke-static {v0, v3}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    move v4, v2

    goto :goto_0

    .line 441
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpHoursPair;->b()I

    move-result v3

    invoke-static {v3, p1}, Lcom/yelp/android/services/f;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 447
    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 59
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 63
    return-object p0
.end method

.method public static b(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 201
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 202
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public static c(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 67
    invoke-static {p0}, Lcom/yelp/android/services/f;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 69
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 71
    return-object v0
.end method

.method public static d(Ljava/util/Calendar;)J
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    sub-int v0, v1, v0

    .line 134
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method
