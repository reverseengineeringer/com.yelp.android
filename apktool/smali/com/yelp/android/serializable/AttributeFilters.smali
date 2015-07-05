.class public Lcom/yelp/android/serializable/AttributeFilters;
.super Lcom/yelp/android/serializable/_AttributeFilters;
.source "AttributeFilters.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELIVERY_ALIAS:Ljava/lang/String; = "RestaurantsDelivery"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/yelp/android/serializable/f;

    invoke-direct {v0}, Lcom/yelp/android/serializable/f;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/AttributeFilters;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributeFilters;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/_AttributeFilters;-><init>(Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public addPromotedFilter(Lcom/yelp/android/serializable/PromotedFilter;)V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/AttributeFilters;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    new-instance v1, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public containsAttribute(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 32
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilters;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/AttributeFilters;

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/yelp/android/serializable/AttributeFilter;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 60
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSuggestedFilters()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributeFilters;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributeFilters;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/AttributeFilters;->mSuggestedFilters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_AttributeFilters;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
