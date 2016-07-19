.class public Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "BusinessSearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/appdata/webrequests/SearchRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;,
        Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;,
        Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/yelp/android/serializable/Category;

.field protected j:I

.field protected k:Lcom/yelp/android/serializable/Filter;

.field protected l:[D

.field protected m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

.field protected n:Z

.field protected o:I

.field protected p:Ljava/lang/String;

.field protected q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

.field r:Lcom/yelp/android/ca/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ca/a;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "search"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 61
    const/16 v0, 0x14

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->o:I

    .line 123
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r:Lcom/yelp/android/ca/a;

    .line 124
    const-string/jumbo v0, "lat"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "long"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Ljava/lang/String;)V

    .line 126
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public B()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r:Lcom/yelp/android/ca/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V

    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 301
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->s()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lorg/apache/http/client/HttpClient;)V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->f()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/k;

    .line 303
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 304
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 305
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 306
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 307
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 308
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 309
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 310
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(I)V

    .line 311
    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 312
    return-object v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    return v0
.end method

.method public D()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public G()Lcom/yelp/android/serializable/Category;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    return-object v0
.end method

.method public H()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method public I()[D
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    return-object v0
.end method

.method public J()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    return-object v0
.end method

.method public synthetic K()Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->B()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 473
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 432
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;"
        }
    .end annotation

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/k;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 438
    return-object p0
.end method

.method public a(Lcom/yelp/android/ca/a;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r:Lcom/yelp/android/ca/a;

    .line 137
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    .line 402
    if-eqz p1, :cond_0

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    .line 405
    :cond_0
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    .line 427
    :goto_0
    return-object p0

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    goto :goto_0
.end method

.method public a([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 369
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Search map region must be an array of 6 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    if-nez p1, :cond_1

    .line 373
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    .line 382
    :goto_0
    return-object p0

    .line 376
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    .line 377
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a:Landroid/location/Location;

    .line 378
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    if-nez v0, :cond_2

    .line 379
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->CREATOR:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i_()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-interface {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    .line 198
    iget v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 199
    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 410
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    .line 411
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DILcom/yelp/android/serializable/Filter;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;I)V
    .locals 4

    .prologue
    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 238
    const-string/jumbo v0, "category"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    if-eqz p6, :cond_6

    .line 241
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Distance;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 242
    const-string/jumbo v0, "explicit_radius"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v0, "radius"

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Distance;->b()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;D)V

    .line 246
    :cond_3
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    if-eq v0, v1, :cond_4

    .line 247
    const-string/jumbo v0, "sort"

    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Sort;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;I)V

    .line 250
    :cond_4
    invoke-virtual {p6}, Lcom/yelp/android/serializable/Filter;->c()Ljava/util/List;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 252
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter;

    .line 255
    :try_start_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_5
    const-string/jumbo v0, "filters"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_6
    if-eqz p4, :cond_7

    array-length v0, p4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 269
    const-string/jumbo v0, "tl_lat"

    const/4 v1, 0x0

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "tl_long"

    const/4 v1, 0x1

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "br_lat"

    const/4 v1, 0x2

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "br_long"

    const/4 v1, 0x3

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_7
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p9}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;I)V

    .line 275
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;I)V

    .line 277
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_8

    .line 279
    const-string/jumbo v1, "location_lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->c(Ljava/lang/String;D)V

    .line 280
    const-string/jumbo v1, "location_long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->c(Ljava/lang/String;D)V

    .line 281
    const-string/jumbo v1, "location_acc"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->c(Ljava/lang/String;D)V

    .line 284
    :cond_8
    if-eqz p7, :cond_9

    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->UNKNOWN:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq p7, v0, :cond_9

    .line 285
    const-string/jumbo v0, "mode"

    iget v1, p7, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->id:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;I)V

    .line 288
    :cond_9
    if-eqz p8, :cond_a

    .line 289
    const-string/jumbo v0, "fmode"

    iget-object v1, p8, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->specifier:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_a
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    if-eqz v0, :cond_b

    .line 293
    const-string/jumbo v0, "unfold"

    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Z)V

    .line 295
    :cond_b
    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/ApiException;
        }
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "locations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/k;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public b(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    .line 142
    return-object p0
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/yelp/android/ca/a;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/ca/a;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 857
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->o:I

    .line 858
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r:Lcom/yelp/android/ca/a;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ca/a;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error caching raw response, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    .line 361
    if-eqz p1, :cond_0

    .line 362
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    .line 363
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a:Landroid/location/Location;

    .line 365
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 505
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 508
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 512
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 513
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Filter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    :cond_2
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    :cond_3
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-ne v2, v3, :cond_0

    .line 531
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-ne v2, v3, :cond_0

    .line 534
    iget v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    iget v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    if-ne v2, v3, :cond_0

    .line 537
    iget-boolean v2, p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    iget-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 519
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 522
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 537
    goto :goto_1
.end method

.method public f(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->p:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    .line 415
    if-eqz p1, :cond_0

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    .line 418
    :cond_0
    return-object p0
.end method

.method public synthetic h(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->p:Ljava/lang/String;

    .line 346
    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->r:Lcom/yelp/android/ca/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ca/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->ordinal()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->n:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 493
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 494
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 496
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 497
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    array-length v1, v0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 501
    :cond_1
    return-void

    .line 490
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->ordinal()I

    move-result v0

    goto :goto_0

    .line 491
    :cond_3
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 492
    goto :goto_2
.end method

.method public x()V
    .locals 10

    .prologue
    .line 157
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    iget v5, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->j:I

    iget-object v6, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->k:Lcom/yelp/android/serializable/Filter;

    iget-object v7, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    iget-object v8, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->q:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    iget v9, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->o:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DILcom/yelp/android/serializable/Filter;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;I)V

    .line 167
    return-void
.end method

.method public y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->x()V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->m:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->l:[D

    if-nez v0, :cond_1

    .line 174
    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a([Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->i:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
