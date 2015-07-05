.class public Lcom/yelp/android/serializable/GenericFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "GenericFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/GenericFeedEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Landroid/net/Uri;

.field private final mDate:Ljava/util/Date;

.field private final mDescription:Ljava/lang/String;

.field private final mHeaderText:Ljava/lang/String;

.field mIconUrl:Ljava/lang/String;

.field private final mLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private final mPhotoUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/yelp/android/serializable/aw;

    invoke-direct {v0}, Lcom/yelp/android/serializable/aw;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/GenericFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 57
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mAction:Landroid/net/Uri;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mIconUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mPhotoUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mHeaderText:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mTitle:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDescription:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 64
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDate:Ljava/util/Date;

    .line 65
    const-class v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 40
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mAction:Landroid/net/Uri;

    .line 44
    :cond_0
    const-string/jumbo v0, "icon_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mIconUrl:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mPhotoUrl:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "header_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mHeaderText:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mTitle:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDescription:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDate:Ljava/util/Date;

    .line 50
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 51
    const-string/jumbo v2, "latitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 52
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method getIconResource()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 86
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mAction:Landroid/net/Uri;

    return-object v0
.end method

.method public setHeaderIcon(Lcom/yelp/android/ui/widgets/WebImageView;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mAction:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/serializable/GenericFeedEntry;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 135
    return-void

    .line 133
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
