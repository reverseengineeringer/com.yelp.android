.class abstract Lcom/yelp/android/serializable/_ReviewThreshold;
.super Ljava/lang/Object;
.source "_ReviewThreshold.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    return v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 105
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    .line 110
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
    .line 113
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    .line 116
    :cond_0
    const-string/jumbo v0, "red_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    .line 117
    const-string/jumbo v0, "blue_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    .line 118
    const-string/jumbo v0, "green_val"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    .line 119
    const-string/jumbo v0, "length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    .line 120
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    if-ne p1, p0, :cond_2

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 50
    check-cast p1, Lcom/yelp/android/serializable/_ReviewThreshold;

    .line 52
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    iget v2, p1, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    iget v2, p1, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    iget v2, p1, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    iget v2, p1, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 98
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewThreshold;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
