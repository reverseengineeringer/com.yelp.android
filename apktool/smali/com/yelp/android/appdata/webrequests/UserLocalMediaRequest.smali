.class public Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;
.super Lcom/yelp/android/appdata/webrequests/MediaRequest;
.source "UserLocalMediaRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private mLastPageSize:I

.field private final mOffset:I

.field private final mTotal:I

.field private final mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gr;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/gr;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v4

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/media"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 41
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mUserId:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mTotal:I

    .line 48
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mOffset:I

    .line 49
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mBusinessId:Ljava/lang/String;

    .line 50
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
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 56
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->cancel(Z)V

    .line 81
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mOffset:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mLastPageSize:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 83
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 84
    return-object v0
.end method

.method public process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mOffset:I

    invoke-static {p1, v0}, Lcom/yelp/android/appdata/webrequests/dm;->a(Lorg/json/JSONObject;I)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dm;->f()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mLastPageSize:I

    .line 67
    return-object v0
.end method

.method public bridge synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->process(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dm;

    move-result-object v0

    return-object v0
.end method

.method public resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mTotal:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method public retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->cancel(Z)V

    .line 95
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mBusinessId:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mOffset:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mTotal:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    .line 97
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 98
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
