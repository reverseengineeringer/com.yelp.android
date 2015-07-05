.class public Lcom/yelp/android/services/r;
.super Ljava/lang/Object;
.source "UtilDates.java"


# direct methods
.method public static a()J
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->d(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/s;
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;J)Lcom/yelp/android/services/s;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;J)Lcom/yelp/android/services/s;
    .locals 17

    .prologue
    .line 188
    invoke-static/range {p2 .. p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 189
    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    new-instance v10, Lcom/yelp/android/services/s;

    invoke-direct {v10}, Lcom/yelp/android/services/s;-><init>()V

    .line 191
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 192
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->a(Z)V

    move-object v2, v10

    .line 258
    :goto_0
    return-object v2

    .line 196
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/yelp/android/services/r;->a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->e(Z)V

    .line 198
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/services/r;->d(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 208
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/r;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/services/r;->d(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 210
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v8, v2, :cond_3

    .line 211
    aget-object v2, p1, v8

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/r;->a(JJJ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    if-eqz v9, :cond_2

    .line 213
    const-string/jumbo v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    aget-object v2, p1, v8

    move-object/from16 v0, p0

    invoke-static {v0, v2, v11}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/4 v3, 0x1

    .line 210
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto :goto_1

    .line 221
    :cond_3
    if-eqz v9, :cond_5

    .line 222
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->a(Ljava/lang/String;)V

    .line 226
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->a(Z)V

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->d(Z)V

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->c(Z)V

    .line 232
    invoke-virtual {v10}, Lcom/yelp/android/services/s;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 233
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->b(Z)V

    :cond_4
    :goto_4
    move-object v2, v10

    .line 258
    goto :goto_0

    .line 224
    :cond_5
    const-string/jumbo v2, ""

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 235
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/yelp/android/services/s;->b(Z)V

    .line 236
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/yelp/android/services/r;->d(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 237
    const/4 v4, 0x0

    move v8, v4

    :goto_5
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v8, v4, :cond_4

    .line 238
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-long v12, v4

    .line 239
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-long v14, v4

    .line 241
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v4

    int-to-long v4, v4

    aget-object v6, p1, v8

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/r;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 244
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/s;->b(Z)V

    .line 245
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v4

    int-to-long v6, v4

    move-wide v4, v14

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/r;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/s;->d(Z)V

    .line 247
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v2

    invoke-virtual {v10, v2, v3}, Lcom/yelp/android/services/s;->b(J)V

    goto :goto_4

    .line 250
    :cond_7
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v4

    int-to-long v6, v4

    move-wide v4, v12

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/services/r;->a(JJJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 251
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/yelp/android/services/s;->c(Z)V

    .line 252
    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v2

    invoke-virtual {v10, v2, v3}, Lcom/yelp/android/services/s;->a(J)V

    goto/16 :goto_4

    .line 237
    :cond_8
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_5

    :cond_9
    move v3, v9

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 382
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

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

    .line 302
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 303
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v0

    invoke-static {v0, v3}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v1

    invoke-static {v1, v3}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 306
    const-string/jumbo v1, ""

    .line 307
    const-string/jumbo v1, ""

    .line 308
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 309
    invoke-static {v7, v4}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 312
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {p0, v0}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {p0, v2}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 325
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    invoke-virtual {v3, v2, v6, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 327
    const v2, 0x7f070437

    .line 328
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "[^0-9]*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    const v2, 0x7f070438

    .line 332
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

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    const-string/jumbo v0, ""

    .line 279
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 280
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 283
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 284
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070404

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 286
    :cond_0
    if-nez v1, :cond_1

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
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
    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 105
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 106
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1, p1}, Lcom/yelp/android/services/r;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/yelp/android/services/r;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
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

    .line 262
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/r;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 264
    div-int/lit16 v1, p0, 0x5a0

    .line 265
    rem-int/lit16 v2, p0, 0x5a0

    .line 266
    div-int/lit8 v3, v2, 0x3c

    .line 267
    rem-int/lit8 v2, v2, 0x3c

    .line 269
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 274
    return-object v0
.end method

.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 50
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 52
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 56
    :cond_0
    return-object p0
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

    .line 365
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 366
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 367
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 369
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 370
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 371
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 373
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

    .line 94
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 99
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

    .line 100
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

    .line 33
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 37
    array-length v4, p0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget v5, p0, v2

    .line 38
    if-ne v3, v5, :cond_2

    move v0, v1

    .line 39
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 336
    array-length v0, p0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return v4

    .line 342
    :cond_0
    aget-object v0, p0, v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v0

    invoke-static {v0, p1}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 344
    aget-object v1, p0, v4

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v1

    invoke-static {v1, p1}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 346
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_3

    .line 350
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpHoursPair;->getOpen()I

    move-result v5

    invoke-static {v5, p1}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 351
    invoke-static {v5, v3}, Lcom/yelp/android/services/r;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v4

    .line 361
    :goto_2
    if-eqz v1, :cond_2

    invoke-static {v0, v3}, Lcom/yelp/android/services/r;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_3
    move v4, v2

    goto :goto_0

    .line 355
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpHoursPair;->getClose()I

    move-result v3

    invoke-static {v3, p1}, Lcom/yelp/android/services/r;->a(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 361
    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 64
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    return-object p0
.end method

.method public static c(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 69
    invoke-static {p0}, Lcom/yelp/android/services/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 71
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 73
    return-object v0
.end method

.method public static d(Ljava/util/Calendar;)J
    .locals 6

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 133
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

    .line 135
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, Lcom/yelp/android/services/r;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method
