.class Lcom/yelp/android/serializable/eo;
.super Ljava/util/AbstractList;
.source "YelpJsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final c:Lcom/yelp/android/serializable/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ba",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lcom/yelp/android/serializable/ba;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/yelp/android/serializable/ba",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 217
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot pass a null variable in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/serializable/eo;->c:Lcom/yelp/android/serializable/ba;

    .line 221
    iput-object p1, p0, Lcom/yelp/android/serializable/eo;->a:Lorg/json/JSONArray;

    .line 222
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/eo;->d:I

    .line 223
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/serializable/eo;->b:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/yelp/android/serializable/eo;->c:Lcom/yelp/android/serializable/ba;

    iget v1, p0, Lcom/yelp/android/serializable/eo;->d:I

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/ba;->b(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/eo;->b:[Ljava/lang/Object;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/eo;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 231
    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/yelp/android/serializable/eo;->c:Lcom/yelp/android/serializable/ba;

    iget-object v1, p0, Lcom/yelp/android/serializable/eo;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/serializable/ba;->make(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/yelp/android/serializable/eo;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 236
    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/yelp/android/serializable/eo;->d:I

    return v0
.end method
