.class public Lcom/yelp/android/serializable/ReviewThreshold;
.super Lcom/yelp/android/serializable/_ReviewThreshold;
.source "ReviewThreshold.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_ReviewThreshold;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/ReviewThreshold;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/ReviewThreshold$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewThreshold$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewThreshold;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->a()I

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/serializable/ReviewThreshold;)I
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewThreshold;->a()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->e:I

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewThreshold;->a()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->e:I

    if-le v0, v1, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewThreshold;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewThreshold;->a(Lorg/json/JSONObject;)V

    .line 58
    const-string/jumbo v0, "bold_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "bold_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->b:I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->d:I

    .line 62
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/ReviewThreshold;->c:I

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->b:I

    .line 65
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->d:I

    .line 66
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->c:I

    goto :goto_0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->c()I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/yelp/android/serializable/ReviewThreshold;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewThreshold;->a(Lcom/yelp/android/serializable/ReviewThreshold;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewThreshold;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewThreshold;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
