.class Lcom/yelp/android/ao/j;
.super Ljava/lang/Object;
.source "RequestParams.java"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/yelp/android/ao/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ao/j;->b:Ljava/lang/String;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nofilename"

    goto :goto_0
.end method
