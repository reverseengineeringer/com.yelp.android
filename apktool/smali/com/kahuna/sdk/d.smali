.class Lcom/kahuna/sdk/d;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;


# direct methods
.method static synthetic a(Lcom/kahuna/sdk/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kahuna/sdk/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kahuna/sdk/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kahuna/sdk/d;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kahuna/sdk/d;->c:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    iget-object v2, p0, Lcom/kahuna/sdk/d;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 234
    :goto_0
    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/kahuna/sdk/d;->c:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kahuna/sdk/d;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 237
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 233
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
