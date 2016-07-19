.class abstract Lcom/yelp/android/serializable/_BusinessCategorySuggest;
.super Ljava/lang/Object;
.source "_BusinessCategorySuggest.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Z

.field protected f:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 117
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    .line 118
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    .line 119
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    .line 122
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    .line 123
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    .line 124
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
    .line 127
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    .line 130
    :cond_0
    const-string/jumbo v0, "parent_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string/jumbo v0, "parent_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    .line 133
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    .line 136
    :cond_2
    const-string/jumbo v0, "exact_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    .line 137
    const-string/jumbo v0, "title_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    .line 138
    const-string/jumbo v0, "parent_title_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    .line 139
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    if-ne p1, p0, :cond_2

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 57
    check-cast p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;

    .line 59
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->f:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 114
    return-void
.end method
