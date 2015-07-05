.class public Lcom/yelp/android/serializable/ReviewDraftFeedEntry;
.super Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;
.source "ReviewDraftFeedEntry.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraftFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_RATING:Ljava/lang/String; = "the_draft_rating"

.field public static final KEY_TEXT:Ljava/lang/String; = "the_draft_text"


# instance fields
.field private final mDraft:Lcom/yelp/android/serializable/ReviewDraft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/yelp/android/serializable/cq;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cq;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Landroid/os/Parcel;)V

    .line 43
    const-class v0, Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/ReviewDraft;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    .line 39
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
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;-><init>(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 34
    sget-object v0, Lcom/yelp/android/serializable/ReviewDraft;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "draft"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEventIriItemType()Lcom/yelp/android/serializable/FeedEntry$ItemType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/yelp/android/serializable/FeedEntry$ItemType;->ReviewDraft:Lcom/yelp/android/serializable/FeedEntry$ItemType;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0201a8

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoProvider()Lcom/yelp/android/serializable/m;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getRating()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public getReviewDraft()Lcom/yelp/android/serializable/ReviewDraft;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    return-object v0
.end method

.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0703c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    const-string/jumbo v1, "the_draft_rating"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/ReviewDraft;->mNumHalfstars:I

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    const-string/jumbo v1, "the_draft_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/ReviewDraft;->mText:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->mDraft:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
