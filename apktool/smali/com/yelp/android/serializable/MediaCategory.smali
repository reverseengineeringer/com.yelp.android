.class public Lcom/yelp/android/serializable/MediaCategory;
.super Lcom/yelp/android/serializable/_MediaCategory;
.source "MediaCategory.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/MediaCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/yelp/android/serializable/MediaCategory$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MediaCategory$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/MediaCategory;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_MediaCategory;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/yelp/android/serializable/MediaCategory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)",
            "Lcom/yelp/android/serializable/MediaCategory;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MediaCategory;-><init>()V

    .line 25
    const-string/jumbo v1, "all_media"

    iput-object v1, v0, Lcom/yelp/android/serializable/MediaCategory;->c:Ljava/lang/String;

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/MediaCategory;->e:I

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yelp/android/serializable/MediaCategory;->a:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yelp/android/serializable/MediaCategory;->b:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p0}, Lcom/yelp/android/serializable/MediaCategory;->b(Ljava/util/List;)V

    .line 30
    return-object v0
.end method

.method private h()Ljava/util/ArrayList;
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
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/yelp/android/serializable/MediaCategory;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v1, p0, Lcom/yelp/android/serializable/MediaCategory;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    new-instance v1, Lcom/yelp/android/serializable/MediaCategory$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/serializable/MediaCategory$1;-><init>(Lcom/yelp/android/serializable/MediaCategory;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
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
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaCategory;->a(Landroid/os/Parcel;)V

    .line 42
    invoke-direct {p0}, Lcom/yelp/android/serializable/MediaCategory;->h()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->f:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaCategory;->a(Lorg/json/JSONObject;)V

    .line 36
    invoke-direct {p0}, Lcom/yelp/android/serializable/MediaCategory;->h()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->f:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 64
    instance-of v4, v0, Lcom/yelp/android/serializable/Photo;

    if-eqz v4, :cond_1

    .line 65
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    instance-of v4, v0, Lcom/yelp/android/serializable/Video;

    if-eqz v4, :cond_0

    .line 67
    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->a:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->b:Ljava/util/ArrayList;

    .line 72
    invoke-direct {p0}, Lcom/yelp/android/serializable/MediaCategory;->h()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/MediaCategory;->f:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method public bridge synthetic c()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_MediaCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_MediaCategory;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_MediaCategory;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
