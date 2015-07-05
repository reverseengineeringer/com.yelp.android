.class public Lcom/yelp/android/serializable/BookmarkFeedEntry;
.super Lcom/yelp/android/serializable/FeedEntry;
.source "BookmarkFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/BookmarkFeedEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBookmark:Lcom/yelp/android/serializable/YelpBookmark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/serializable/k;

    invoke-direct {v0}, Lcom/yelp/android/serializable/k;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 36
    const-class v0, Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBookmark;

    iput-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBookmark:Lcom/yelp/android/serializable/YelpBookmark;

    .line 37
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
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 31
    new-instance v0, Lcom/yelp/android/serializable/YelpBookmark;

    const-string/jumbo v1, "bookmark"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/YelpBookmark;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBookmark:Lcom/yelp/android/serializable/YelpBookmark;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getActivitySubtitle(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 4

    .prologue
    .line 51
    const v0, 0x7f0700ea

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/BookmarkFeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBookmark:Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBookmark;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->Bookmark:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f02009f

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBookmark:Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBookmark;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne p2, v0, :cond_0

    .line 58
    const v0, 0x7f0703b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0700e5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/FeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/BookmarkFeedEntry;->mBookmark:Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
