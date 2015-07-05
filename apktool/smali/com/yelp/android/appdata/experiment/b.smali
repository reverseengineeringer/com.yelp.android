.class public Lcom/yelp/android/appdata/experiment/b;
.super Lcom/yelp/android/appdata/experiment/a;
.source "BaseWebExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Lcom/yelp/android/appdata/experiment/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/experiment/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    iput-object p3, p0, Lcom/yelp/android/appdata/experiment/b;->c:Ljava/lang/Enum;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/experiment/g;->a()Lcom/yelp/android/appdata/experiment/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/experiment/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/experiment/b;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/b;->c:Ljava/lang/Enum;

    .line 45
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/b;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/b;->c:Ljava/lang/Enum;

    goto :goto_0
.end method
