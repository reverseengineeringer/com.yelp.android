.class public Lcom/yelp/android/serializable/YelpBusiness;
.super Lcom/yelp/android/serializable/_YelpBusiness;
.source "YelpBusiness.java"

# interfaces
.implements Lcom/yelp/android/serializable/f;
.implements Lcom/yelp/android/ui/panels/businesssearch/a;


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


# instance fields
.field private aL:Ljava/lang/String;

.field private aM:J

.field private aN:Ljava/util/TimeZone;

.field private aO:Lorg/json/JSONObject;

.field private aP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/yelp/android/serializable/YelpBusiness$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusiness$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusiness;-><init>()V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aM:J

    .line 165
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aN:Ljava/util/TimeZone;

    .line 166
    return-void
.end method

.method private a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 225
    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 230
    :goto_1
    if-ge v0, v2, :cond_4

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 232
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/parcelgen/JsonUtil;->getStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    .line 234
    array-length v6, v4

    if-lez v6, :cond_3

    .line 235
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

    .line 239
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    .line 240
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 243
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 83
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 84
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Ljava/lang/String;)V

    .line 85
    iget-object v4, v0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-nez v4, :cond_0

    .line 86
    iput-object p2, v0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 88
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_1
    return-object v3
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;Z)Ljava/util/HashMap;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 123
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 125
    if-eqz p3, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 127
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Ljava/lang/String;)V

    .line 128
    iget-object v4, v0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-nez v4, :cond_1

    .line 129
    iput-object p2, v0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_3
    return-object v3
.end method

.method public static b(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private bf()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->c()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->bg()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->bh()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->i()Ljava/lang/String;

    move-result-object v2

    .line 394
    new-instance v3, Lcom/yelp/android/serializable/YelpAddress;

    invoke-direct {v3, v2, v0, v1}, Lcom/yelp/android/serializable/YelpAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/yelp/android/serializable/YelpAddresses;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/yelp/android/serializable/YelpAddresses;-><init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    goto :goto_0
.end method

.method private bg()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v0

    .line 407
    if-eqz v0, :cond_4

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 410
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_2
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 440
    :goto_1
    return-object v0

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 427
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->J:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 429
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    :cond_5
    if-eqz v0, :cond_6

    .line 433
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->F:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 435
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->F:Ljava/lang/String;

    goto :goto_1

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 438
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->J:Ljava/lang/String;

    goto :goto_1
.end method

.method private bh()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v2

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aC()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aB()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aA()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->av()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    if-eqz v2, :cond_4

    .line 475
    invoke-virtual {v3, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 498
    :cond_3
    :goto_0
    if-eqz v2, :cond_7

    .line 499
    const-string/jumbo v0, "\n"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_1
    return-object v0

    .line 477
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_5
    if-nez v2, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ay()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 486
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->az()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 488
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v0, v4, v6

    const-string/jumbo v5, ", "

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 491
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ax()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 493
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v0, v4, v6

    const-string/jumbo v0, " "

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    .line 501
    :cond_7
    const-string/jumbo v0, ", "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public A()I
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aH:I

    iget v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aK:I

    add-int/2addr v0, v1

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020379

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02036c

    goto :goto_0
.end method

.method public C()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1062
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aw:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->ax:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 1080
    const-string/jumbo v2, "hot_and_new"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const/4 v0, 0x1

    .line 1084
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic E()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->E()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic F()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->F()I

    move-result v0

    return v0
.end method

.method public bridge synthetic G()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->G()I

    move-result v0

    return v0
.end method

.method public bridge synthetic H()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->H()I

    move-result v0

    return v0
.end method

.method public bridge synthetic I()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->I()I

    move-result v0

    return v0
.end method

.method public bridge synthetic J()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->J()I

    move-result v0

    return v0
.end method

.method public bridge synthetic K()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->K()I

    move-result v0

    return v0
.end method

.method public bridge synthetic L()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->L()I

    move-result v0

    return v0
.end method

.method public bridge synthetic M()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->M()I

    move-result v0

    return v0
.end method

.method public bridge synthetic N()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->N()I

    move-result v0

    return v0
.end method

.method public bridge synthetic O()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->O()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic P()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->P()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic Q()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->Q()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic R()D
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->R()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic S()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->S()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic T()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->T()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic U()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->U()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic V()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->V()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic W()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->W()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic X()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->X()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Y()Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->Y()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Z()Lcom/yelp/android/serializable/YelpAddresses;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->Z()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/location/Location;)D
    .locals 8

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 760
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 762
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/util/i;->a(DDDD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 694
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f070666

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f0706cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 1075
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/yelp/android/util/i;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    :cond_0
    const/4 v0, 0x0

    .line 721
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

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

.method public a(D)V
    .locals 1

    .prologue
    .line 1066
    iput-wide p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->az:D

    .line 1067
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 847
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aI:I

    .line 848
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusiness;->a(Landroid/os/Parcel;)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aP:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aM:J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aN:Ljava/util/TimeZone;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aO:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 1057
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aw:D

    .line 1058
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->ax:D

    .line 1059
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ContinueLastOrderInfo;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->e:Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    .line 686
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Offer;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->y:Lcom/yelp/android/serializable/Offer;

    .line 653
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Reservation;)V
    .locals 5

    .prologue
    .line 658
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 659
    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 660
    if-eqz p1, :cond_0

    .line 661
    const-string/jumbo v1, "reservation"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    .line 664
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->C:Lcom/yelp/android/serializable/Reservation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 667
    const-string/jumbo v1, "YelpBusiness"

    const-string/jumbo v2, "Got a json exception writing the Reservation, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->an:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 1071
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->ae:Ljava/lang/String;

    .line 844
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aP:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusiness;->a(Lorg/json/JSONObject;)V

    .line 174
    const-string/jumbo v0, "transit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "transit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->V:Ljava/lang/String;

    .line 178
    :cond_0
    const-string/jumbo v0, "recent_check_in_friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_5

    .line 181
    const-string/jumbo v1, "recent_check_in_friends"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aG:I

    .line 183
    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
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

    .line 188
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->y()Lcom/yelp/android/serializable/User;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 191
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->s:Ljava/util/List;

    .line 199
    :goto_1
    const-string/jumbo v0, "fmode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    const-string/jumbo v0, "fmode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 201
    if-nez v0, :cond_6

    .line 202
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 208
    :cond_3
    :goto_2
    const-string/jumbo v0, "dfp_ad_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aO:Lorg/json/JSONObject;

    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->Y:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 211
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->Y:Ljava/lang/String;

    .line 213
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

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aN:Ljava/util/TimeZone;

    .line 220
    const-string/jumbo v0, "local_ads"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    .line 222
    return-void

    .line 196
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->s:Ljava/util/List;

    goto :goto_1

    .line 204
    :cond_6
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->g:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    goto :goto_2
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 674
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 675
    const-string/jumbo v1, "is_bookmarked"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    const-string/jumbo v1, "is_bookmarked"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 677
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    .line 678
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusiness;->as:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    const-string/jumbo v1, "YelpBusiness"

    const-string/jumbo v2, "Json Exception [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic aA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aE()Lcom/yelp/android/serializable/SpamAlert;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aE()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aF()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aG()Lcom/yelp/android/serializable/RecentFriendCheckIns;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aG()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aH()Lcom/yelp/android/serializable/PlatformAction;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aI()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aI()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aJ()Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aK()Lcom/yelp/android/serializable/MessageTheBusiness;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aL()Lcom/yelp/android/serializable/Menu;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aL()Lcom/yelp/android/serializable/Menu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aM()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aM()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aN()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aN()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aO()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aO()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aP()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aP()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aQ()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aQ()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aR()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aR()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aS()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aS()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aT()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aT()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aU()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aU()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aV()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aV()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aW()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aW()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aX()Lcom/yelp/android/serializable/HealthData;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aX()Lcom/yelp/android/serializable/HealthData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aY()Lcom/yelp/android/serializable/FromThisBusiness;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aZ()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aZ()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aa()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aa()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic af()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic al()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->al()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic am()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->am()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic an()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->at()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic au()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic av()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->av()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ax()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->az()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->be()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    .line 971
    if-nez v0, :cond_0

    .line 972
    const-string/jumbo v0, ""

    .line 1004
    :goto_0
    return-object v0

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    .line 976
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 980
    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->S:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 981
    iget-object v3, p0, Lcom/yelp/android/serializable/YelpBusiness;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->d()Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 991
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->c()Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 998
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic ba()Lcom/yelp/android/serializable/ContinueLastOrderInfo;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->ba()Lcom/yelp/android/serializable/ContinueLastOrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bb()Lcom/yelp/android/serializable/CallToAction;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bc()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->bc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bd()Lcom/yelp/android/serializable/AndroidAppAnnotation;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->bd()Lcom/yelp/android/serializable/AndroidAppAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic be()Lcom/yelp/android/serializable/AlternateBusinessNames;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->be()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    const v1, 0x7f070160

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    :cond_0
    :goto_0
    return-object v0

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->q()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1018
    const v1, 0x7f070167

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1020
    const v1, 0x7f070166

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1022
    :cond_3
    const v1, 0x7f07015d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aN:Ljava/util/TimeZone;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 779
    if-ne p0, p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 782
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 783
    goto :goto_0

    .line 785
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 789
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 790
    iget-object v2, p1, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 791
    goto :goto_0

    .line 793
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 794
    goto :goto_0
.end method

.method public f()Landroid/location/Address;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Landroid/location/Address;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 322
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aB()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aA()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->av()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/a;->a(Landroid/location/Address;[Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 325
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 326
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->az()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, ", "

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusiness;->p:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->al()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 337
    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aE()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fraud_warning"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aE()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SpamAlert;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->bf()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->c()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->c()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    :goto_0
    return-object v0

    .line 368
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->b()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->b()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 771
    .line 773
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 774
    return v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aR()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 512
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->at()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 517
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 518
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    const v1, 0x7f070477

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 541
    :cond_0
    :goto_1
    return-object v1

    .line 511
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 525
    :cond_2
    const v1, 0x7f07022e

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 531
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 532
    const-string/jumbo v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    const v0, 0x7f070478

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 535
    :cond_4
    const v0, 0x7f07022f

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 537
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 538
    goto :goto_1
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aC()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ay()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->az()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ax()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 573
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->bf()V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Z()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->b()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->Z()Lcom/yelp/android/serializable/YelpAddresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddresses;->c()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v1

    .line 585
    if-nez v0, :cond_1

    .line 586
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->b()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 592
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    const-string/jumbo v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 597
    const-string/jumbo v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusiness;->bf()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddresses;->c()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpAddress;->d()Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->al:Lcom/yelp/android/serializable/YelpAddresses;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddresses;->b()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v1

    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpAddress;->d()Ljava/lang/String;

    move-result-object v0

    .line 621
    :cond_1
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->k()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->l()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    :goto_0
    return-object v0

    .line 631
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 632
    goto :goto_0

    .line 634
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

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aP:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 704
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusiness;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->O()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/util/Date;
    .locals 2

    .prologue
    .line 737
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->q()Ljava/util/Date;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 747
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusiness;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->q()Ljava/util/Date;

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

.method public s()V
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aC:I

    .line 801
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aC:I

    .line 805
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aA:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aA:I

    .line 817
    return-void
.end method

.method public v()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aO:Lorg/json/JSONObject;

    return-object v0
.end method

.method public w()Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->ae:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->fromDescription(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpBusiness;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aM:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aN:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aO:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->aO:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public x()Lcom/yelp/android/serializable/Reservation$Provider;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->af:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation$Provider;->getProvider(Ljava/lang/String;)Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->al()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->ak()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 5

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    .line 923
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->be()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v2

    .line 924
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_2

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->S:Ljava/lang/String;

    .line 966
    :cond_1
    :goto_0
    return-object v0

    .line 928
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 933
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 938
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->c()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 946
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->b()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 956
    :cond_3
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 960
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->d()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusiness;->S:Ljava/lang/String;

    goto :goto_0
.end method
