.class public Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "BusinessSearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/appdata/webrequests/SearchRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final GEOBOX_BOTTOM_RIGHT_LAT_PARAM:Ljava/lang/String; = "br_lat"

.field private static final GEOBOX_BOTTOM_RIGHT_LONG_PARAM:Ljava/lang/String; = "br_long"

.field private static final GEOBOX_TOP_LEFT_LAT_PARAM:Ljava/lang/String; = "tl_lat"

.field private static final GEOBOX_TOP_LEFT_LONG_PARAM:Ljava/lang/String; = "tl_long"

.field private static final INCLUDE_FILTER:Ljava/lang/String; = "1"

.field private static final OPEN_NOW_FILTER_PARAM:Ljava/lang/String; = "opennow_filter"


# instance fields
.field mCacheAdapter:Lcom/yelp/android/ax/a;

.field protected mCacheDescriptorOverride:Ljava/lang/String;

.field protected mCategory:Lcom/yelp/android/serializable/Category;

.field protected mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

.field protected mFilter:Lcom/yelp/android/serializable/Filter;

.field protected mLimit:I

.field protected mPageOffset:I

.field protected mRegion:[D

.field protected mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field private final mSearchOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchTerms:Ljava/lang/String;

.field protected mTermNear:Ljava/lang/String;

.field protected mUnfold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 519
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ad;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/ad;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ax/a;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "search"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLimit:I

    .line 122
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheAdapter:Lcom/yelp/android/ax/a;

    .line 123
    const-string/jumbo v0, "lat"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLatitudeKey(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "long"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLongitudeKey(Ljava/lang/String;)V

    .line 125
    const-class v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    .line 126
    return-void
.end method

.method static synthetic access$200(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;)Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    return-object v0
.end method


# virtual methods
.method protected addUrlParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DILcom/yelp/android/serializable/Filter;Ljava/util/EnumSet;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[DI",
            "Lcom/yelp/android/serializable/Filter;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {p7, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "cio_filter"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->SALES_AND_SPECIAL_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {p7, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    const-string/jumbo v0, "offers_filter"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 237
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 240
    const-string/jumbo v0, "category"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_3
    if-eqz p6, :cond_b

    .line 243
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getPricesOnly()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "price_filter"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Filtering :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 254
    :cond_4
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getBusinessState()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getOpenTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 256
    const-string/jumbo v0, "opennow_filter"

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getOpenTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/services/r;->d(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_5
    :goto_1
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v0

    iget-wide v0, v0, Lcom/yelp/android/serializable/at;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 264
    const-string/jumbo v0, "explicit_radius"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v0, "radius"

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v1

    iget-wide v2, v1, Lcom/yelp/android/serializable/at;->b:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;D)V

    .line 268
    :cond_6
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getSort()Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    if-eq v0, v1, :cond_7

    .line 269
    const-string/jumbo v0, "sort"

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getSort()Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter$Sort;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 272
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 274
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
    :cond_8
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_9
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->getBusinessState()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    const-string/jumbo v0, "opennow_filter"

    invoke-static {}, Lcom/yelp/android/services/r;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_a
    const-string/jumbo v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 279
    const-string/jumbo v1, "attribs_filter"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_b
    if-eqz p4, :cond_c

    array-length v0, p4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 284
    const-string/jumbo v0, "tl_lat"

    const/4 v1, 0x0

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "tl_long"

    const/4 v1, 0x1

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "br_lat"

    const/4 v1, 0x2

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "br_long"

    const/4 v1, 0x3

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_c
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p10}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 292
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    const-string/jumbo v1, "location_lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 295
    const-string/jumbo v1, "location_long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 296
    const-string/jumbo v1, "location_acc"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addObfuscatedUrlParam(Ljava/lang/String;D)V

    .line 299
    :cond_d
    if-eqz p8, :cond_e

    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->UNKNOWN:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq p8, v0, :cond_e

    .line 300
    const-string/jumbo v0, "mode"

    iget v1, p8, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->id:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 303
    :cond_e
    if-eqz p9, :cond_f

    .line 304
    const-string/jumbo v0, "fmode"

    iget-object v1, p9, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->specifier:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_f
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    if-eqz v0, :cond_10

    .line 308
    const-string/jumbo v0, "unfold"

    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParam(Ljava/lang/String;Z)V

    .line 310
    :cond_10
    return-void
.end method

.method protected cacheRawResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheAdapter:Lcom/yelp/android/ax/a;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ax/a;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error caching raw response, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public copy()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheAdapter:Lcom/yelp/android/ax/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 315
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 316
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 317
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLocation(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/h;

    .line 318
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 319
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 320
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFilter(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 321
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCategory(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 322
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setRegion([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 323
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 324
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 325
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mPageOffset:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setOffset(I)V

    .line 326
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchOptions(Ljava/util/EnumSet;)V

    .line 327
    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setUnFoldedResults(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 328
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->copy()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Lcom/yelp/android/serializable/Category;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    return-object v0
.end method

.method getCategoryAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilter()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method public getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    return-object v0
.end method

.method public getPageOffset()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mPageOffset:I

    return v0
.end method

.method protected getRawResponseFromCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 367
    :goto_0
    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheDescriptorOverride:Ljava/lang/String;

    .line 362
    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCacheDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheAdapter:Lcom/yelp/android/ax/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ax/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegion()[D
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    return-object v0
.end method

.method public getSearchMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    return-object v0
.end method

.method public getSearchOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getSearchTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getTermNear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->prepareQuery()V

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addLocationToUrl(Landroid/location/Location;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareQuery()V
    .locals 11

    .prologue
    .line 157
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCategoryAlias()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    iget v5, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mPageOffset:I

    iget-object v6, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    iget-object v7, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    iget-object v8, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    iget-object v9, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iget v10, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLimit:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->addUrlParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DILcom/yelp/android/serializable/Filter;Ljava/util/EnumSet;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;I)V

    .line 167
    return-void
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 3

    .prologue
    .line 195
    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->CREATOR:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-interface {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/af;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    .line 197
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mPageOffset:I

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mOffset:I
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 198
    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method protected processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 344
    const-string/jumbo v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "locations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/h;->processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public search()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->prepareQuery()V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    if-nez v0, :cond_1

    .line 174
    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->executeWithLocation([Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public setCacheAdapter(Lcom/yelp/android/ax/a;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheAdapter:Lcom/yelp/android/ax/a;

    .line 137
    return-object p0
.end method

.method public bridge synthetic setCacheAdapter(Lcom/yelp/android/ax/a;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCacheAdapter(Lcom/yelp/android/ax/a;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCacheDescriptorOverride(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCacheDescriptorOverride:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;"
        }
    .end annotation

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/h;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 453
    return-object p0
.end method

.method public bridge synthetic setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    .line 417
    if-eqz p1, :cond_0

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    .line 420
    :cond_0
    return-object p0
.end method

.method public setFilter(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    .line 442
    :goto_0
    return-object p0

    .line 440
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    goto :goto_0
.end method

.method public setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 488
    return-object p0
.end method

.method public setLimit(I)V
    .locals 0

    .prologue
    .line 807
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLimit:I

    .line 808
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 425
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mPageOffset:I

    .line 426
    return-void
.end method

.method public setRegion([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 384
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Search map region must be an array of 6 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    if-nez p1, :cond_1

    .line 388
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    .line 397
    :goto_0
    return-object p0

    .line 391
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    .line 392
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLocation:Landroid/location/Location;

    .line 393
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    if-nez v0, :cond_2

    .line 394
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 447
    return-object p0
.end method

.method public setSearchOptions(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 818
    return-void
.end method

.method public setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 429
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    .line 433
    :cond_0
    return-object p0
.end method

.method public setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    .line 378
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLocation:Landroid/location/Location;

    .line 380
    :cond_0
    return-object p0
.end method

.method public setTermSearch(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 410
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    .line 412
    return-object p0
.end method

.method public setUnFoldedResults(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    .line 142
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchTerms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mTermNear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->ordinal()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mSearchOptions:Ljava/util/EnumSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 508
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mUnfold:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 509
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mFilter:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 510
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 512
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mCategory:Lcom/yelp/android/serializable/Category;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    array-length v1, v0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->mRegion:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 517
    :cond_1
    return-void

    .line 505
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->ordinal()I

    move-result v0

    goto :goto_0

    .line 506
    :cond_3
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 508
    goto :goto_2
.end method
