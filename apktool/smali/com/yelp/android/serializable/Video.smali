.class public Lcom/yelp/android/serializable/Video;
.super Lcom/yelp/android/serializable/_Video;
.source "Video.java"

# interfaces
.implements Lcom/yelp/android/serializable/IdentifiableMedia;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFeedback:Lcom/yelp/android/serializable/Feedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/yelp/android/serializable/do;

    invoke-direct {v0}, Lcom/yelp/android/serializable/do;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Video;-><init>()V

    .line 48
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p12}, Lcom/yelp/android/serializable/_Video;-><init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 43
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Video;

    if-nez v2, :cond_3

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->getProvider()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getProvider()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Video$Provider;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 124
    iget-object v2, p1, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public equalsId(Lcom/yelp/android/serializable/ay;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/yelp/android/serializable/Video;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 60
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentUserLiked()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getCurrentUserLiked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedback()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic getFeedbackPositiveCount()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getFeedbackPositiveCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndex()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPlayerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getPlayerCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mVideoSource:Ljava/lang/String;

    # invokes: Lcom/yelp/android/serializable/Video$Provider;->fromVideoSource(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;
    invoke-static {v0}, Lcom/yelp/android/serializable/Video$Provider;->access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->getVideoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 105
    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Video;->readFromJson(Lorg/json/JSONObject;)V

    .line 72
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/serializable/Video;->mFeedbackPositiveCount:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 73
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Video;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    .line 79
    return-void
.end method

.method public uploadedByBusinessOwner()Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->getProvider()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Video$Provider;->OOYALA:Lcom/yelp/android/serializable/Video$Provider;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Video$Provider;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Video;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->mFeedback:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    return-void
.end method
