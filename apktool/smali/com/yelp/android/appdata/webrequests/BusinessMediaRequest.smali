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
.field private final a:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 101
    const-string/jumbo v2, "all_media"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v2, "all_media"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 8
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
    const/4 v3, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 146
    const-string/jumbo v2, "all_media"

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 127
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/business/media/v2"

    invoke-direct {p0, v0, v1, p7}, Lcom/yelp/android/appdata/webrequests/MediaRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 128
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    .line 130
    const/16 v0, 0x32

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->h:I

    .line 131
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    .line 132
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->j:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->k:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "biz_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "limit"

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;I)V

    .line 137
    const-string/jumbo v0, "tab"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "photo_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "video_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    const-string/jumbo v0, "offset"

    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;I)V

    .line 143
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p7}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
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
    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 6

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Z)V

    .line 187
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 189
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 190
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/yelp/android/serializable/MediaPayload;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaPayload;

    .line 166
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/MediaPayload;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 8

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Z)V

    .line 196
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->k:Ljava/lang/String;

    iget v5, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    iget v6, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->h:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 199
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 200
    return-object v0
.end method

.method public b(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->h:I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 209
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
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
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaPayload;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->b(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic f()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->b()Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void
.end method
