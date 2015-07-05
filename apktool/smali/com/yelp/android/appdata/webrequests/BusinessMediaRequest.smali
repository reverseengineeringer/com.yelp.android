.class public Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
.super Lcom/yelp/android/appdata/webrequests/MediaRequest;
.source "BusinessMediaRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private mLastPageSize:I

.field private final mLimit:I

.field private mOffset:I

.field private mPhotoId:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/yelp/android/appdata/webrequests/x;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/x;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/business/media"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 54
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    .line 55
    const/16 v0, 0x32

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    .line 56
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    .line 57
    const-string/jumbo v0, "biz_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "limit"

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 59
    const-string/jumbo v0, "offset"

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 76
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "photo_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    const-string/jumbo v0, "video_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    return-void
.end method

.method public static photosStartingAtSpecificPhoto(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 40
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method public static singlePhoto(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->photosStartingAtSpecificPhoto(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static singleVideo(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method


# virtual methods
.method public countMedia(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    return v0
.end method

.method public isSingleMediaRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->cancel(Z)V

    .line 111
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLastPageSize:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 113
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 114
    return-object v0
.end method

.method public bridge synthetic next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->next(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    invoke-static {p1, v0}, Lcom/yelp/android/appdata/webrequests/dm;->a(Lorg/json/JSONObject;I)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dm;->f()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLastPageSize:I

    .line 95
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dm;->e()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    .line 96
    return-object v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    return-object v0
.end method

.method public resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    move-object p0, v0

    .line 132
    :cond_0
    return-object p0
.end method

.method public bridge synthetic resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public retry()Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 7

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->cancel(Z)V

    .line 120
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    iget-object v5, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 122
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 123
    return-object v0
.end method

.method public bridge synthetic retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->retry()Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mPhotoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
