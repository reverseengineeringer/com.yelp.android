.class public Lcom/yelp/android/serializable/FavoritesList;
.super Lcom/yelp/android/serializable/_FavoritesList;
.source "FavoritesList.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/FavoritesList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/yelp/android/serializable/FavoritesList$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FavoritesList$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FavoritesList;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FavoritesList;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FavoritesList;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/FavoritesList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FavoritesList;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/FavoritesList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/FavoritesList;

    if-nez v2, :cond_3

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/FavoritesList;

    .line 58
    iget-object v2, p0, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 59
    iget-object v2, p1, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/FavoritesList;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic i()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_FavoritesList;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FavoritesList;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
