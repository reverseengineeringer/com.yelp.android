.class public Lcom/yelp/android/serializable/BizPhotoFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "BizPhotoFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/BizPhotoFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static PHOTO_REMOVED:Ljava/lang/String;


# instance fields
.field private final mDateModified:Ljava/util/Date;

.field public mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "photo_removed"

    sput-object v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->PHOTO_REMOVED:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/yelp/android/serializable/j;

    invoke-direct {v0}, Lcom/yelp/android/serializable/j;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 86
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    .line 87
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    .line 88
    invoke-direct {p0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->initializePhotosBusinessId()V

    .line 89
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    .line 72
    const-string/jumbo v2, "timestamp"

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    .line 74
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 75
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "business_photo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->initializePhotosBusinessId()V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 43
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    .line 47
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->initializePhotosBusinessId()V

    .line 56
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "photos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    .line 53
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    goto :goto_0
.end method

.method private initializePhotosBusinessId()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 211
    iget-object v2, v0, Lcom/yelp/android/serializable/Photo;->mBusinessId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yelp/android/serializable/Photo;->mBusinessId:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 6

    .prologue
    .line 151
    const v0, 0x7f0e001c

    iget-object v1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessIriParams()Ljava/util/Map;
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
    .line 93
    invoke-super {p0}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessIriParams()Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    .line 95
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->BusinessPhoto:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f0202ec

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 130
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p2, v0, :cond_0

    .line 141
    const v0, 0x7f0e0019

    iget-object v1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e001f

    iget-object v1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserIriParams()Ljava/util/Map;
    .locals 4
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
    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    const-string/jumbo v2, "user_id"

    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    .line 105
    return-object v1
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public setPhotos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setupIriParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
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
    .line 189
    const-string/jumbo v0, "item_type"

    const-string/jumbo v1, "photo"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    const-string/jumbo v1, "item_id"

    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    return-object p1
.end method

.method public updateContent(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->PHOTO_REMOVED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->PHOTO_REMOVED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 171
    iget-object v1, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 186
    return-void

    .line 184
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
