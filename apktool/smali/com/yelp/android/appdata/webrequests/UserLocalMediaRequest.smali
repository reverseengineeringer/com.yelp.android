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
.field private final a:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v4

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v4

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/media"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 45
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Ljava/lang/String;I)V

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a:Ljava/lang/String;

    .line 52
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->h:I

    .line 53
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    .line 54
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->g:Ljava/lang/String;

    .line 55
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
    .line 59
    const/4 v0, 0x0

    .line 60
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

    .line 61
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/yelp/android/serializable/MediaPayload;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaPayload;

    .line 73
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    .line 74
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
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->g:Ljava/lang/String;

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->h:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method public d(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Z)V

    .line 88
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->g:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 90
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 91
    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a(Z)V

    .line 102
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->g:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->h:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 104
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
