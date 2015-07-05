.class public abstract Lcom/yelp/android/ag/k;
.super Lcom/yelp/android/ag/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ag/a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/ag/l;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ag/a;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "View must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ag/k;->a:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/yelp/android/ag/l;

    invoke-direct {v0, p1}, Lcom/yelp/android/ag/l;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ag/k;->b:Lcom/yelp/android/ag/l;

    .line 49
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ag/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/request/a;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ag/k;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public a(Lcom/yelp/android/ag/h;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ag/k;->b:Lcom/yelp/android/ag/l;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ag/l;->a(Lcom/yelp/android/ag/h;)V

    .line 70
    return-void
.end method

.method public f()Lcom/bumptech/glide/request/a;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ag/k;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    instance-of v1, v0, Lcom/bumptech/glide/request/a;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ag/k;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
