.class public Lcom/yelp/android/serializable/BusinessCategorySuggest;
.super Lcom/yelp/android/serializable/_BusinessCategorySuggest;
.source "BusinessCategorySuggest.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yelp/android/serializable/l;

    invoke-direct {v0}, Lcom/yelp/android/serializable/l;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessCategorySuggest;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExactMatch()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getExactMatch()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentTitleMatch()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getParentTitleMatch()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleMatch()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->getTitleMatch()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
