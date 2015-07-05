.class public Lcom/yelp/android/af/l;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/yelp/android/af/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/af/g",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/af/k;

.field private b:Lcom/yelp/android/af/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/e",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/android/af/k;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/af/l;->a:Lcom/yelp/android/af/k;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/yelp/android/af/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/yelp/android/af/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/yelp/android/af/h;->b()Lcom/yelp/android/af/e;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/af/l;->b:Lcom/yelp/android/af/e;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/yelp/android/af/j;

    iget-object v1, p0, Lcom/yelp/android/af/l;->a:Lcom/yelp/android/af/k;

    invoke-direct {v0, v1}, Lcom/yelp/android/af/j;-><init>(Lcom/yelp/android/af/k;)V

    iput-object v0, p0, Lcom/yelp/android/af/l;->b:Lcom/yelp/android/af/e;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/af/l;->b:Lcom/yelp/android/af/e;

    goto :goto_0
.end method
