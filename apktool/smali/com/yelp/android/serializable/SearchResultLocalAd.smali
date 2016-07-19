.class public Lcom/yelp/android/serializable/SearchResultLocalAd;
.super Lcom/yelp/android/serializable/LocalAd;
.source "SearchResultLocalAd.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/businesssearch/c;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private k:Lcom/yelp/android/serializable/BusinessSearchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/yelp/android/serializable/SearchResultLocalAd$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SearchResultLocalAd;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/LocalAd;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 35
    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    .line 36
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    iput-object v1, v0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    goto :goto_1

    .line 43
    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/LocalAd;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)Ljava/util/Map;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->h()Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 75
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    const-string/jumbo v0, "ad_type"

    const-string/jumbo v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    return-object v1
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/LocalAd;->a(Landroid/os/Parcel;)V

    .line 55
    const-class v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 56
    return-void
.end method

.method public e()Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/LocalAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultLocalAd;->k:Lcom/yelp/android/serializable/BusinessSearchResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    return-void
.end method
