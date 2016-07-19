.class public Lcom/yelp/android/serializable/Photo$TempPhoto;
.super Lcom/yelp/android/serializable/Photo;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempPhoto"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/yelp/android/serializable/Photo;-><init>()V

    .line 331
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->h:Ljava/lang/String;

    .line 332
    iput-object p3, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->b:Ljava/lang/String;

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->e:Ljava/util/List;

    .line 334
    iput-object p2, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->j:Ljava/lang/String;

    .line 335
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo$TempPhoto;->c:Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->e()I

    move-result v0

    return v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->h()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->w()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Ljava/util/List;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/yelp/android/serializable/Photo;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
