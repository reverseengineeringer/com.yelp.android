.class public Lcom/yelp/android/serializable/AttributeFilter;
.super Lcom/yelp/android/serializable/_AttributeFilter;
.source "AttributeFilter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/AttributeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/e;

    invoke-direct {v0}, Lcom/yelp/android/serializable/e;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/AttributeFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributeFilter;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/AttributeFilter;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributeFilter;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/yelp/android/serializable/AttributeFilter;->mAlias:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/AttributeFilter;->mAlias:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/yelp/android/serializable/AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/serializable/_AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/AttributeFilter;->mAlias:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/AttributeFilter;

    if-nez v2, :cond_3

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/AttributeFilter;

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/AttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/AttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isPopular()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributeFilter;->isPopular()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributeFilter;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributeFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_AttributeFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
