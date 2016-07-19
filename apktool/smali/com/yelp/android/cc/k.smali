.class public Lcom/yelp/android/cc/k;
.super Ljava/lang/Object;
.source "MessageTheBusinessDraft.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/yelp/android/cc/k;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cc/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yelp/android/cc/k;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/yelp/android/cc/k;->b:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/yelp/android/cc/k;->c()V

    .line 14
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/cc/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot make a new MessageTheBusinessDraft instance with a null or empty businessId parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cc/k;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot make a new MessageTheBusinessDraft instance with a null message parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/cc/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/cc/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/yelp/android/cc/k;

    if-eqz v2, :cond_3

    .line 53
    check-cast p1, Lcom/yelp/android/cc/k;

    .line 54
    iget-object v2, p0, Lcom/yelp/android/cc/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/cc/k;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/yelp/android/cc/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/yelp/android/cc/k;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    mul-int/2addr v0, v1

    .line 44
    return v0
.end method
