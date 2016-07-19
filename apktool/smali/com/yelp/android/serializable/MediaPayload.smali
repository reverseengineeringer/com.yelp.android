.class public Lcom/yelp/android/serializable/MediaPayload;
.super Lcom/yelp/android/serializable/_MediaPayload;
.source "MediaPayload.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/yelp/android/serializable/MediaPayload$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MediaPayload$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/MediaPayload;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_MediaPayload;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "all_media"

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/MediaPayload;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaPayload;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaPayload;->a(Lorg/json/JSONObject;)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    const-string/jumbo v1, "all_media"

    sget-object v2, Lcom/yelp/android/serializable/MediaCategory;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v2, p1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->b()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "all_media"

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/MediaPayload;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 2
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
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "all_media"

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/MediaPayload;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 2
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
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    const-string/jumbo v1, "all_media"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaPayload;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 2
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
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaPayload;->a:Ljava/util/Map;

    const-string/jumbo v1, "all_media"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaCategory;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaPayload;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaPayload;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaPayload;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_MediaPayload;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
