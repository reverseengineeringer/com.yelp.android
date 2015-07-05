.class public Lcom/yelp/android/serializable/CheckInFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "CheckInFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/yelp/android/serializable/x;

    invoke-direct {v0}, Lcom/yelp/android/serializable/x;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/CheckInFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 41
    const-class v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
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
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 29
    const-string/jumbo v0, "check_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "checkin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, v1, Lcom/yelp/android/serializable/YelpCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 37
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "check_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->CheckIn:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0200ef

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p2, v0, :cond_0

    .line 52
    const v0, 0x7f0703b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f07012d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedEntry;->mCheckIn:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
