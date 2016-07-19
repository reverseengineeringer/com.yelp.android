.class abstract Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;
.super Ljava/lang/Object;
.source "_RequestAQuoteSearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:[I

.field protected e:[I

.field protected f:[I

.field protected g:[I

.field protected h:[I

.field protected i:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 151
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    .line 152
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    .line 166
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    .line 172
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    .line 175
    :cond_1
    const-string/jumbo v1, "is_disabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    .line 176
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 179
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    move v1, v0

    .line 180
    :goto_0
    if-ge v1, v3, :cond_2

    .line 181
    iget-object v4, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 187
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    move v1, v0

    .line 188
    :goto_1
    if-ge v1, v3, :cond_3

    .line 189
    iget-object v4, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_3
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 195
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    move v1, v0

    .line 196
    :goto_2
    if-ge v1, v3, :cond_4

    .line 197
    iget-object v4, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    :cond_4
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 201
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 203
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    move v1, v0

    .line 204
    :goto_3
    if-ge v1, v3, :cond_5

    .line 205
    iget-object v4, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 208
    :cond_5
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 209
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 211
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    move v1, v0

    .line 212
    :goto_4
    if-ge v1, v3, :cond_6

    .line 213
    iget-object v4, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 216
    :cond_6
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 217
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 219
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    .line 220
    :goto_5
    if-ge v0, v2, :cond_7

    .line 221
    iget-object v3, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 224
    :cond_7
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public e()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    if-ne p1, p0, :cond_2

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 68
    check-cast p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;

    .line 70
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    return-object v0
.end method

.method public h()[I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()[I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    return-object v0
.end method

.method public j()[I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->c:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->e:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->f:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->h:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/serializable/_RequestAQuoteSearchAction;->i:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    return-void
.end method
