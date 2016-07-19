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
.field private final a:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->J()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/profile/photos"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 38
    const/16 v0, 0x14

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "offset"

    invoke-virtual {p0, v1, p3}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Ljava/lang/String;I)V

    .line 41
    const-string/jumbo v1, "limit"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Ljava/lang/String;I)V

    .line 42
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    .line 44
    iput v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->g:I

    .line 45
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->h:I

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
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
    .line 50
    const/4 v0, 0x0

    .line 51
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

    .line 52
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/yelp/android/serializable/MediaPayload;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaPayload;

    .line 90
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    .line 91
    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->h:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->g:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 82
    return-object v0
.end method

.method public d(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Z)V

    .line 63
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->h:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 65
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 66
    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a(Z)V

    .line 72
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a:Ljava/lang/String;

    iget v2, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->h:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->g:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 74
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 75
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
