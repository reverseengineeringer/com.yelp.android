.class public Lcom/yelp/android/serializable/YelpBusiness;
.super Lcom/yelp/android/serializable/_YelpBusiness;
.source "YelpBusiness.java"

# interfaces
.implements Lcom/yelp/android/serializable/by;
.implements Lcom/yelp/android/ui/panels/businesssearch/f;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_BUSINESS:Ljava/lang/String; = "extra.business"

.field public static final GEOACCURACY_MAPPABLE:I = 0x6


# instance fields
.field private mCachedDisplayAddress:Ljava/lang/String;

.field private mDFPAdParams:Lorg/json/JSONObject;

.field private mJSONString:Ljava/lang/String;

.field private mTimeFetched:J

.field private mTimeZone:Ljava/util/TimeZone;

.field private mYelpRequestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/yelp/android/serializable/dx;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dx;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusiness;-><init>()V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeFetched:J

    .line 162
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeZone:Ljava/util/TimeZone;

    .line 163
    return-void
.end method

.method public static businessesFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 82
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->setYelpRequestId(Ljava/lang/String;)V

    .line 83
    iget-object v4, v0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-nez v4, :cond_0

    .line 84
    iput-object p2, v0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 86
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    return-object v3
.end method

.method private deprecatedCreateLongFormAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->e(Ljava/lang/String;)Z

    move-result v2

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress2()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress3()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 459
    if-eqz v2, :cond_4

    .line 460
    invoke-virtual {v3, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    :cond_3
    :goto_0
    if-eqz v2, :cond_7

    .line 484
    const-string/jumbo v0, "\n"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 486
    :goto_1
    return-object v0

    .line 462
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_5
    if-nez v2, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 471
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getState()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 473
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v0, v4, v6

    const-string/jumbo v5, ", "

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 476
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getZip()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 478
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v0, v4, v6

    const-string/jumbo v0, " "

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    .line 486
    :cond_7
    const-string/jumbo v0, ", "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method private deprecatedCreatePrimaryLanguageField()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->deprecatedCreateShortFormAddress()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->deprecatedCreateLongFormAddress()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->createCrossStreets()Ljava/lang/String;

    move-result-object v2

    .line 379
    new-instance v3, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v3, v2, v0, v1}, Lcom/yelp/android/serializable/YelpAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/yelp/android/serializable/YelpAddresses;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/yelp/android/serializable/YelpAddresses;-><init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    goto :goto_0
.end method

.method private deprecatedCreateShortFormAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->e(Ljava/lang/String;)Z

    move-result v0

    .line 392
    if-eqz v0, :cond_4

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress3:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_2
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_1
    return-object v0

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 412
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCity:Ljava/lang/String;

    .line 413
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 414
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    :cond_5
    if-eqz v0, :cond_6

    .line 418
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress1:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 420
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAddress1:Ljava/lang/String;

    goto :goto_1

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 423
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCity:Ljava/lang/String;

    goto :goto_1
.end method

.method public static findBusinessInListById(Ljava/util/List;Ljava/lang/String;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/serializable/YelpBusiness;"
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 151
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateTransitDescription(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 221
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 225
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 226
    :goto_1
    if-ge v0, v2, :cond_4

    .line 227
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 228
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/parcelgen/JsonUtil;->getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    .line 230
    array-length v6, v4

    if-lez v6, :cond_3

    .line 231
    const-string/jumbo v6, "%s (%s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string/jumbo v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    .line 236
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/serializable/YelpBusiness;->jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;Z)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 120
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 122
    if-eqz p3, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 124
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->setYelpRequestId(Ljava/lang/String;)V

    .line 125
    iget-object v4, v0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-nez v4, :cond_1

    .line 126
    iput-object p2, v0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 128
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_3
    return-object v3
.end method


# virtual methods
.method public createCrossStreets()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getNeighborhoods()Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCrossStreets()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 502
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 503
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const v1, 0x7f070452

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 522
    :cond_0
    :goto_1
    return-object v1

    .line 496
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_2
    const v1, 0x7f0701e3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 511
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 512
    const-string/jumbo v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    const v0, 0x7f070453

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 516
    :cond_4
    const v0, 0x7f0701e4

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 518
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 519
    goto :goto_1
.end method

.method public decrementPhotoCount()V
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotoCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotoCount:I

    .line 796
    return-void
.end method

.method public decrementTipCount()V
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTipCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTipCount:I

    .line 788
    return-void
.end method

.method public deletePhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 872
    if-ltz v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 875
    :cond_0
    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 762
    if-ne p0, p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 765
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 766
    goto :goto_0

    .line 768
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 769
    goto :goto_0

    .line 771
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 772
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 773
    iget-object v2, p1, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 774
    goto :goto_0

    .line 776
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 777
    goto :goto_0
.end method

.method public getAddress()Landroid/location/Address;
    .locals 4

    .prologue
    .line 315
    new-instance v0, Landroid/location/Address;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 317
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress3()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Landroid/location/Address;[Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v1, ", "

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->mNeighborhoods:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 332
    return-object v0
.end method

.method public bridge synthetic getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAddress1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAddress2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAddress3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressForBusinessSearchResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->deprecatedCreatePrimaryLanguageField()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->getShortForm()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    :goto_0
    return-object v0

    .line 353
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->getShortForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getAddressForDrivingDirections()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress1()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getState()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getZip()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 554
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateNameString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    .line 945
    if-nez v0, :cond_0

    .line 946
    const-string/jumbo v0, ""

    .line 978
    :goto_0
    return-object v0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 950
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 954
    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 955
    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getPrimary()Ljava/lang/String;

    move-result-object v3

    .line 962
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 965
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getSecondary()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 972
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    return-object v0
.end method

.method public getAssetForMap()I
    .locals 1

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->isLocationAccurate()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02028c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020281

    goto :goto_0
.end method

.method public bridge synthetic getAttributions()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAttributions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAvgRating()F
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getAvgRating()F

    move-result v0

    return v0
.end method

.method public getBestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getBizOwnerVideo()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getBizOwnerVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 1020
    return-object p0
.end method

.method public bridge synthetic getCallToAction()Lcom/yelp/android/serializable/CallToAction;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCategories()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryForBusinessSearchResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public bridge synthetic getCheckInOffer()Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckedInFriendCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCheckedInFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCheckedInFriends()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCheckedInFriends()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedStreetAddress()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getGeneralAddress()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    :goto_0
    return-object v0

    .line 611
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 612
    goto :goto_0

    .line 614
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string/jumbo v3, "\n"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCrossStreets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getCrossStreets()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateReopening()Ljava/util/Date;
    .locals 2

    .prologue
    .line 712
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getDateReopening()Ljava/util/Date;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDeal()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method

.method public getDfpParameters()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDFPAdParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic getDialablePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayAddresses()Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getDisplayAddresses()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v2

    .line 899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mName:Ljava/lang/String;

    .line 940
    :cond_1
    :goto_0
    return-object v0

    .line 903
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 908
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 913
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getSecondary()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 921
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getRomanized()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 931
    :cond_3
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 934
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getPrimary()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayNameForBusinessSearchResult(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->isMovedToNewAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    const v1, 0x7f0700d7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 999
    :cond_0
    :goto_0
    return-object v0

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDateReopening()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 992
    const v1, 0x7f0700dc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getMovedToBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 994
    const v1, 0x7f0700db

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 996
    :cond_3
    const v1, 0x7f0700d4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getDisplayUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance(Landroid/location/Location;)D
    .locals 8

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 746
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 748
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/util/o;->a(DDDD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->isLocationAccurate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/yelp/android/util/o;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDistance(Landroid/location/Location;)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/StringUtils;->a(DDLcom/yelp/android/util/StringUtils$Format;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFriendBookmarkedCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getFriendBookmarkedCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getFromThisBusiness()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->deprecatedCreatePrimaryLanguageField()V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->getCrossStreets()Ljava/lang/String;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddresses;->getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v1

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->getCrossStreets()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->getCrossStreets()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getGeoAccuracy()F
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getGeoAccuracy()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getHours()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getHours()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 307
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocalizedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocalizedAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedHours()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocalizedHours()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedStreetAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayAddresses:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->deprecatedCreatePrimaryLanguageField()V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayAddresses()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    .line 562
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayAddresses()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddresses;->getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v1

    .line 566
    if-nez v0, :cond_1

    .line 567
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->getLongForm()Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    .line 573
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->getShortForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->getShortForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const-string/jumbo v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 578
    const-string/jumbo v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMenu()Lcom/yelp/android/serializable/Menu;
    .locals 1

    .prologue
    .line 734
    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->isEventsFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getMenu()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMenuDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getMenuDisplayUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMenuUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMovedToBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getMovedToBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMovies()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getMovies()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNeighborhoods()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getNeighborhoods()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotoCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotos()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotosAndVideosCount()I
    .locals 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotoCount:I

    iget v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->isEventsFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPlatformAction()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPrice()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPrice()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrimaryPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getPrimaryPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getRawJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRegularCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getRegularCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRegularNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getRegularNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservation()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public getReservationProvider()Lcom/yelp/android/serializable/Reservation$Provider;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mReservationProviderString:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation$Provider;->getProvider(Ljava/lang/String;)Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservationProviderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReview()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getReviewInsights()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getReviewInsights()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->fromDescription(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    return-object v0
.end method

.method public getShareStringShort()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 679
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mLocalizedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mLocalizedPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpamAlert()Lcom/yelp/android/serializable/SpamAlert;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getSpamAlert()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpecialHours()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getSpecialHours()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTheaterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getTheaterUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeFetched()J
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeFetched:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public bridge synthetic getTipCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getTipCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getTopUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransitDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getTransitDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserCheckinsCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUserCheckinsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUserCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserDeals()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUserDeals()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserReviewRating()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUserReviewRating()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUserReviewStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getUserReviewStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public getYelpRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mYelpRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getYelpUrl(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 670
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f070684

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f070105

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getYelpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getYelpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->getZip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 754
    .line 756
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 757
    return v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public incrementPhotoCount()V
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotoCount:I

    .line 792
    return-void
.end method

.method public incrementTipCount()V
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTipCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTipCount:I

    .line 784
    return-void
.end method

.method public bridge synthetic isAdRatingDisabled()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->isAdRatingDisabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBookmarked()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->isBookmarked()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 722
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getDateReopening()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationAccurate()Z
    .locals 2

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->getGeoAccuracy()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isMessageToBusinessEnabled()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->isMessageToBusinessEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMovedToNewAddress()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->isMovedToNewAddress()Z

    move-result v0

    return v0
.end method

.method public prependPhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 845
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusiness;->readFromJson(Lorg/json/JSONObject;)V

    .line 171
    const-string/jumbo v0, "transit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "transit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/yelp/android/serializable/YelpBusiness;->generateTransitDescription(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTransitDescription:Ljava/lang/String;

    .line 175
    :cond_0
    const-string/jumbo v0, "recent_check_in_friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_5

    .line 178
    const-string/jumbo v1, "recent_check_in_friends"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCheckedInFriendCount:I

    .line 180
    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 184
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/User;->setCheckIn(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 187
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_2
    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    .line 195
    :goto_1
    const-string/jumbo v0, "fmode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    const-string/jumbo v0, "fmode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    if-nez v0, :cond_6

    .line 198
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 204
    :cond_3
    :goto_2
    const-string/jumbo v0, "dfp_ad_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDFPAdParams:Lorg/json/JSONObject;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 207
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDisplayUrl:Ljava/lang/String;

    .line 209
    :cond_4
    const-string/jumbo v0, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeZone:Ljava/util/TimeZone;

    .line 216
    const-string/jumbo v0, "local_ads"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    .line 218
    return-void

    .line 192
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCheckedInFriends:Ljava/util/List;

    goto :goto_1

    .line 200
    :cond_6
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    goto :goto_2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusiness;->readFromParcel(Landroid/os/Parcel;)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mYelpRequestId:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeFetched:J

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeZone:Ljava/util/TimeZone;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDFPAdParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBookmarked(Z)V
    .locals 5

    .prologue
    .line 654
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 655
    const-string/jumbo v1, "is_bookmarked"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v1, "is_bookmarked"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 657
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    .line 658
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mIsBookmarked:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    const-string/jumbo v1, "YelpBusiness"

    const-string/jumbo v2, "Json Exception [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCheckInOffer(Lcom/yelp/android/serializable/Offer;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mCheckInOffer:Lcom/yelp/android/serializable/Offer;

    .line 633
    return-void
.end method

.method public setIsMessageToBusinessEnabled(Z)V
    .locals 0

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mIsMessageToBusinessEnabled:Z

    .line 1016
    return-void
.end method

.method public setReservation(Lcom/yelp/android/serializable/Reservation;)V
    .locals 5

    .prologue
    .line 638
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 640
    if-eqz p1, :cond_0

    .line 641
    const-string/jumbo v1, "reservation"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mReservation:Lcom/yelp/android/serializable/Reservation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 647
    const-string/jumbo v1, "YelpBusiness"

    const-string/jumbo v2, "Got a json exception writing the Reservation, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setReviewState(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mUserReviewStatus:Ljava/lang/String;

    .line 819
    return-void
.end method

.method public setUserReviewRating(I)V
    .locals 0

    .prologue
    .line 822
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mUserReviewRating:I

    .line 823
    return-void
.end method

.method public setYelpRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mYelpRequestId:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public updatePhoto(Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 858
    if-ltz v0, :cond_0

    .line 859
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->mPhotos:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_0
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpBusiness;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mJSONString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mYelpRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeFetched:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDFPAdParams:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->mDFPAdParams:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
