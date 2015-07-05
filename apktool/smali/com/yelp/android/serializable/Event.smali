.class public Lcom/yelp/android/serializable/Event;
.super Lcom/yelp/android/serializable/_Event;
.source "Event.java"

# interfaces
.implements Lcom/yelp/android/serializable/by;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_EVENT:Ljava/lang/String; = "extra.event"

.field private static final NEWLINE:Ljava/lang/String; = "<br>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/yelp/android/serializable/ai;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ai;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Event;-><init>()V

    .line 77
    return-void
.end method

.method private assignBusinessToEvent(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 419
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 420
    return-void

    .line 419
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0
.end method

.method private assignUserToEvent(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->mUser:Lcom/yelp/android/serializable/User;

    .line 415
    return-void
.end method

.method public static buildEventsFromJSONResponse(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {p0, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    .line 394
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 395
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 396
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Lcom/yelp/android/serializable/Event;->assignBusinessToEvent(Lorg/json/JSONObject;)V

    .line 399
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yelp/android/serializable/Event;->assignUserToEvent(Lorg/json/JSONObject;)V

    .line 394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 396
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 401
    :cond_1
    return-object v3
.end method

.method private costToString(D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mCurrencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 288
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 291
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static eventFromJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 407
    invoke-direct {v0, p2}, Lcom/yelp/android/serializable/Event;->assignBusinessToEvent(Lorg/json/JSONObject;)V

    .line 408
    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/Event;->assignUserToEvent(Lorg/json/JSONObject;)V

    .line 409
    return-object v0
.end method

.method private getDistance(Landroid/location/Location;)D
    .locals 8

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 351
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 353
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/util/o;->a(DDDD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/yelp/android/util/o;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->getDistance(Landroid/location/Location;)D

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

.method private getFormattedTimeEnd(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v4

    invoke-static {p1, v0, v4, v5}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f07025f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedTimeStart(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v4

    invoke-static {p1, v0, v4, v5}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f07025f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v6

    invoke-static {v4, v0, v6, v7}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFree()Z
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCost()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCost()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 379
    instance-of v0, p1, Lcom/yelp/android/serializable/Event;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/yelp/android/serializable/Event;

    .line 381
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeginTime()J
    .locals 6

    .prologue
    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 260
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCost()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getCost()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCostMax()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getCostMax()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCostString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/yelp/android/serializable/Event;->isFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-object p1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCostMax()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCost()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/Event;->costToString(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v0, "%s - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCost()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yelp/android/serializable/Event;->costToString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getCostMax()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/yelp/android/serializable/Event;->costToString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/serializable/Event;->getDistanceFormatted(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 6

    .prologue
    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getEventPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getEventPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getEventUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getEventUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f070418

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getEventUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0705f2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    const-string/jumbo v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0701dc

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f070297

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/serializable/Event;->getCostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLocationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getMapAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedShortDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[\n]+"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-direct {p0}, Lcom/yelp/android/serializable/Event;->isFree()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    const v1, 0x7f070297

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/serializable/Event;->getCostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const v2, 0x7f070308

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0701dc

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    const v2, 0x7f070557

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFormattedTimeRange(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    if-ne v1, v2, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->getFormattedTimeStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 165
    invoke-static {v0, v1, v2}, Lcom/yelp/android/services/r;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const v0, 0x7f07025f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "%s %s - %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v4

    invoke-static {p1, v2, v4, v5}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    const-string/jumbo v1, "%s %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v4

    invoke-static {p1, v2, v4, v5}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeStart()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getTimeEnd()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3

    .line 179
    const-string/jumbo v0, "%s - %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->getFormattedTimeStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->getFormattedTimeEnd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_3
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Event;->getFormattedTimeStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 369
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getLocationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocationRating()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getLocationRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMapAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getMapAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReminderNotification()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getReminderNotification()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getRsvp()Lcom/yelp/android/serializable/EventRsvp;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getSubscriptionStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mSubscriptionStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTalkTopicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTalkTopicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTalkTopicUserCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTalkTopicUserCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTicketsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTicketsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeEnd()J
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTimeEnd()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimeStart()J
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTimeStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getTimezone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/yelp/android/serializable/Event$EventType;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBusiness()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mBusinessId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPartyPass()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/EventRsvp;->getPartyPassImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isUserParticipating()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 340
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/EventRsvp;->getUserHasReplied()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 341
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 338
    goto :goto_0

    :cond_3
    move v3, v2

    .line 340
    goto :goto_1
.end method

.method public bridge synthetic isYelpCommunity()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/yelp/android/serializable/_Event;->isYelpCommunity()Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Event;->readFromJson(Lorg/json/JSONObject;)V

    .line 425
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$EventType;->getEventType(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->mType:Lcom/yelp/android/serializable/Event$EventType;

    .line 426
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Event;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yelp/android/serializable/Event;->mId:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setReminderNotification(Z)V
    .locals 0

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/yelp/android/serializable/Event;->mReminderNotification:Z

    .line 319
    return-void
.end method

.method public setRsvp(Lcom/yelp/android/serializable/EventRsvp;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/yelp/android/serializable/Event;->mRsvp:Lcom/yelp/android/serializable/EventRsvp;

    .line 315
    return-void
.end method

.method public setSubscriptionStatus(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->getValueString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Event;->mSubscriptionStatus:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public updateEventObjectInList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 308
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 309
    invoke-interface {p1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Event;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
