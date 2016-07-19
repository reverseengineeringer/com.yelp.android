.class public Lcom/yelp/android/appdata/experiment/b;
.super Lcom/yelp/android/appdata/experiment/a;
.source "BaseLocalExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Enum",
        "<TC;>;>",
        "Lcom/yelp/android/appdata/experiment/a",
        "<TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/experiment/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/b;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 50
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/yelp/android/appdata/experiment/g;->a()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/appdata/experiment/b;->a()Ljava/lang/Enum;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/yelp/android/appdata/experiment/g;->a()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/experiment/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/b;->b:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method
