.class public abstract Lcom/yelp/android/bw/a;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/yelp/android/bx/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/yelp/android/bx/b;",
        "M::",
        "Lcom/yelp/android/bx/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/bx/a;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/yelp/android/bx/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected final b:Lcom/yelp/android/bx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TM;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/yelp/android/by/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bx/b;

    iput-object v0, p0, Lcom/yelp/android/bw/a;->a:Lcom/yelp/android/bx/b;

    .line 36
    invoke-static {p2}, Lcom/yelp/android/by/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/bx/c;

    iput-object v0, p0, Lcom/yelp/android/bw/a;->b:Lcom/yelp/android/bx/c;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/bw/a;->c:Z

    .line 49
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/bw/a;->b:Lcom/yelp/android/bx/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/bx/c;->a(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yelp/android/bw/a;->c:Z

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to manually call Presenter#onCreate once your View is setup!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
