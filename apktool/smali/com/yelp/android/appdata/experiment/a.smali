.class public abstract Lcom/yelp/android/appdata/experiment/a;
.super Ljava/lang/Object;
.source "BaseExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/appdata/experiment/a;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/appdata/experiment/a;->b:Ljava/lang/Class;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Enum;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/appdata/experiment/a;->a()Ljava/lang/Enum;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
