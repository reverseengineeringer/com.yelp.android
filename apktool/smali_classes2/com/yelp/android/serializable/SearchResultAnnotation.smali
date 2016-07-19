.class public Lcom/yelp/android/serializable/SearchResultAnnotation;
.super Lcom/yelp/android/serializable/_SearchResultAnnotation;
.source "SearchResultAnnotation.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yelp/android/serializable/SearchResultAnnotation$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultAnnotation$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SearchResultAnnotation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->a(Landroid/os/Parcel;)V

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

    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->a(Lorg/json/JSONObject;)V

    .line 45
    const-string/jumbo v0, "title_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "title_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->e:I

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->g:I

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->f:I

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->e:I

    .line 52
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->g:I

    .line 53
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->f:I

    goto :goto_0
.end method

.method public bridge synthetic b()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 66
    check-cast p1, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->e()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->d()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 80
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 83
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 88
    :cond_9
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
