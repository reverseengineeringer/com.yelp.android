.class public Lcom/yelp/android/g/g;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/yelp/android/g/g",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/yelp/android/g/g;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    instance-of v1, p1, Lcom/yelp/android/g/g;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    check-cast p1, Lcom/yelp/android/g/g;

    .line 53
    iget-object v1, p1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yelp/android/g/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yelp/android/g/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
