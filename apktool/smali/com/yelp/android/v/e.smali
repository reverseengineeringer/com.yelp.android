.class public Lcom/yelp/android/v/e;
.super Ljava/lang/Object;
.source "GlideUrl.java"


# instance fields
.field private final a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private c:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String url must not be empty or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/v/e;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/v/e;->a:Ljava/net/URL;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URL must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/v/e;->a:Ljava/net/URL;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/v/e;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private b()Ljava/net/URL;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/v/e;->c:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/v/e;->c:Ljava/net/URL;

    .line 62
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/v/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/v/e;->c:Ljava/net/URL;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/v/e;->c:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/v/e;->b()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    if-ne p0, p1, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/v/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/v/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/v/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/v/e;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/v/e;->b:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/v/e;->b:Ljava/lang/String;

    return-object v0
.end method
