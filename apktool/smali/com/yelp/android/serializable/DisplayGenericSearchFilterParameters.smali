.class public Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;
.super Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;
.source "DisplayGenericSearchFilterParameters.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a(Landroid/os/Parcel;)V

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
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()[I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->b()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 28
    check-cast p1, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->c()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->b()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 42
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->b()[I

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->b()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 48
    return v0

    :cond_1
    move v0, v1

    .line 41
    goto :goto_0

    :cond_2
    move v0, v1

    .line 42
    goto :goto_1
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilterParameters;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
