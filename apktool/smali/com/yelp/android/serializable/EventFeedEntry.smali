.class public Lcom/yelp/android/serializable/EventFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "EventFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/EventFeedEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEvent:Lcom/yelp/android/serializable/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/serializable/ak;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ak;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/EventFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 33
    const-class v0, Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 28
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->EventCreated:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0201b9

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const v0, 0x7f070257

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getLocationName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/EventFeedEntry;->mEvent:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
