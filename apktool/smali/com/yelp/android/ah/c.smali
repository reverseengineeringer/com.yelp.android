.class public Lcom/yelp/android/ah/c;
.super Ljava/lang/Object;
.source "StringSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Signature cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ah/c;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ah/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_2
    check-cast p1, Lcom/yelp/android/ah/c;

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ah/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/yelp/android/ah/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ah/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
