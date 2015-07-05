.class public abstract Lcom/yelp/android/serializable/FeedEntry;
.super Ljava/lang/Object;
.source "FeedEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ENTRY_DATA_KEY:Ljava/lang/String; = "bundle to be passed"

.field public static final ENTRY_DELETED_KEY:Ljava/lang/String; = "did we delete it?"

.field public static final ENTRY_ID_KEY:Ljava/lang/String; = "changed entry id"

.field public static final NO_PHOTO_COUNT:I = -0x1

.field public static final NO_RATING:I = -0x1

.field public static final NO_REVIEW_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FeedEntry"


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mUser:Lcom/yelp/android/serializable/User;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 87
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    .line 88
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/serializable/FeedEntry;-><init>()V

    .line 75
    if-nez p2, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 76
    :goto_0
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->setYelpRequestId(Ljava/lang/String;)V

    .line 80
    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    .line 83
    :cond_1
    return-void

    .line 75
    :cond_2
    check-cast p2, Lcom/yelp/android/av/g;

    invoke-virtual {p2}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static createFeedEntries(Lorg/json/JSONArray;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 237
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 238
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    .line 239
    :goto_0
    if-ge v4, v6, :cond_2

    .line 240
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    const-string/jumbo v2, "grouped_items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 257
    :goto_1
    :try_start_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/yelp/android/serializable/FeedEntry$EntryType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeedEntry$EntryType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    sget-object v8, Lcom/yelp/android/serializable/aq;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry$EntryType;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 295
    :goto_2
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v2, "grouped_items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 252
    const-string/jumbo v8, "activity_type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    const-string/jumbo v2, "FeedEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid feed entry type: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " skipping this entry."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 267
    :pswitch_0
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/CheckInFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 270
    :pswitch_1
    new-instance v0, Lcom/yelp/android/serializable/BookmarkFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/BookmarkFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 273
    :pswitch_2
    new-instance v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 277
    :pswitch_3
    new-instance v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-direct {v0, v3, p1}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;-><init>(Lorg/json/JSONArray;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 280
    :pswitch_4
    new-instance v0, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/TipFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 283
    :pswitch_5
    new-instance v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 286
    :pswitch_6
    new-instance v0, Lcom/yelp/android/serializable/EventFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/EventFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 289
    :pswitch_7
    new-instance v0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 292
    :pswitch_8
    new-instance v0, Lcom/yelp/android/serializable/GenericFeedEntry;

    invoke-direct {v0, v2, p1}, Lcom/yelp/android/serializable/GenericFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 299
    :cond_2
    return-object v7

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessIriParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
.end method

.method abstract getIconResource()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLocation()Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x1

    return v0
.end method

.method public getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public abstract getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
.end method

.method public getTextMaxLineCount()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x2

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getUserIriParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public setHeaderIcon(Lcom/yelp/android/ui/widgets/WebImageView;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedEntry;->getIconResource()I

    move-result v0

    .line 183
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 184
    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupIriParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    const-string/jumbo v0, "item_type"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedEntry;->getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;

    move-result-object v1

    iget-object v1, v1, Lcom/yelp/android/serializable/FeedEntry$ItemType;->iri:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "item_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p1
.end method

.method public updateContent(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 94
    return-void
.end method
