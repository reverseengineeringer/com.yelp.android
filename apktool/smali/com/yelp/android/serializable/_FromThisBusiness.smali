.class abstract Lcom/yelp/android/serializable/_FromThisBusiness;
.super Ljava/lang/Object;
.source "_FromThisBusiness.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/BusinessRepresentative;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v1, "representative"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessRepresentative;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v1, "specialties"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 141
    const-string/jumbo v1, "history"

    iget-object v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_2
    const-string/jumbo v1, "show_teaser"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v1, "year_established"

    iget v2, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 109
    const-class v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    .line 110
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    .line 111
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    .line 115
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
    .line 118
    const-string/jumbo v0, "representative"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "representative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    .line 122
    :cond_0
    const-string/jumbo v0, "specialties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "specialties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    .line 125
    :cond_1
    const-string/jumbo v0, "history"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    const-string/jumbo v0, "history"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    .line 128
    :cond_2
    const-string/jumbo v0, "show_teaser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    .line 129
    const-string/jumbo v0, "year_established"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    .line 130
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-ne p1, p0, :cond_2

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 54
    check-cast p1, Lcom/yelp/android/serializable/_FromThisBusiness;

    .line 56
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    iget v2, p1, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->a:Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->d:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 105
    iget v0, p0, Lcom/yelp/android/serializable/_FromThisBusiness;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
