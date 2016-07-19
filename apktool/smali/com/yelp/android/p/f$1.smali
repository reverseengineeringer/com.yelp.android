.class Lcom/yelp/android/p/f$1;
.super Landroid/support/v4/view/be;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/p/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/p/f;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/yelp/android/p/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object p1, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/yelp/android/p/f$1;->b:Z

    .line 118
    iput v0, p0, Lcom/yelp/android/p/f$1;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/yelp/android/p/f$1;->c:I

    .line 133
    iput-boolean v0, p0, Lcom/yelp/android/p/f$1;->b:Z

    .line 134
    iget-object v0, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v0}, Lcom/yelp/android/p/f;->b(Lcom/yelp/android/p/f;)V

    .line 135
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/yelp/android/p/f$1;->b:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/p/f$1;->b:Z

    .line 126
    iget-object v0, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v0}, Lcom/yelp/android/p/f;->a(Lcom/yelp/android/p/f;)Landroid/support/v4/view/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v0}, Lcom/yelp/android/p/f;->a(Lcom/yelp/android/p/f;)Landroid/support/v4/view/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bd;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/yelp/android/p/f$1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/p/f$1;->c:I

    iget-object v1, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v1}, Lcom/yelp/android/p/f;->c(Lcom/yelp/android/p/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v0}, Lcom/yelp/android/p/f;->a(Lcom/yelp/android/p/f;)Landroid/support/v4/view/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/p/f$1;->a:Lcom/yelp/android/p/f;

    invoke-static {v0}, Lcom/yelp/android/p/f;->a(Lcom/yelp/android/p/f;)Landroid/support/v4/view/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bd;->b(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/p/f$1;->a()V

    .line 145
    :cond_1
    return-void
.end method
