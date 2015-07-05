.class public Lcom/yelp/android/appdata/webrequests/dm;
.super Ljava/lang/Object;
.source "MediaRequest.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Ljava/util/ArrayList;

    .line 118
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dm;->b:Ljava/util/ArrayList;

    .line 119
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/dm;->c:Ljava/util/ArrayList;

    .line 120
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/dm;->d:I

    .line 121
    iput p5, p0, Lcom/yelp/android/appdata/webrequests/dm;->e:I

    .line 122
    return-void
.end method

.method public static a(Lorg/json/JSONObject;I)Lcom/yelp/android/appdata/webrequests/dm;
    .locals 6

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 103
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    const-string/jumbo v0, "videos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v0, "videos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 109
    :cond_1
    const-string/jumbo v0, "total"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 110
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 111
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/webrequests/dm;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dm;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 72
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_4

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v2

    .line 83
    :goto_1
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    .line 90
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getIndex()I

    move-result v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getIndex()I

    move-result v0

    if-ge v6, v0, :cond_2

    move v0, v4

    .line 79
    goto :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    goto :goto_2

    .line 91
    :cond_4
    return-object v5
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
