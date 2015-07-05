.class public Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;
.super Lcom/yelp/android/appdata/webrequests/MediaRequest;
.source "UserPhotoRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastPageSize:I

.field private final mLimit:I

.field private final mOffset:I

.field private final mTotal:I

.field private final mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gu;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/gu;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoCount()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/profile/photos"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 33
    const/16 v0, 0x14

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "offset"

    invoke-virtual {p0, v1, p3}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 36
    const-string/jumbo v1, "limit"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 37
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mUserId:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mOffset:I

    .line 39
    iput v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLimit:I

    .line 40
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mTotal:I

    .line 41
    return-void
.end method


# virtual methods
.method public countMedia(Ljava/util/List;)I
    .locals 4
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
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 47
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->cancel(Z)V

    .line 58
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mUserId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mTotal:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mOffset:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLastPageSize:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V

    .line 60
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 61
    return-object v0
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mOffset:I

    invoke-static {p1, v0}, Lcom/yelp/android/appdata/webrequests/dm;->a(Lorg/json/JSONObject;I)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dm;->f()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLastPageSize:I

    .line 84
    return-object v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    return-object v0
.end method

.method public resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 75
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mUserId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mTotal:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLimit:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V

    .line 77
    return-object v0
.end method

.method public retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->cancel(Z)V

    .line 67
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mUserId:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mTotal:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mOffset:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLimit:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V

    .line 69
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 70
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
