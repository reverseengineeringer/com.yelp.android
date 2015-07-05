.class Lcom/yelp/android/l/i;
.super Landroid/support/v4/view/ey;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/l/h;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/yelp/android/l/h;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-direct {p0}, Landroid/support/v4/view/ey;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/yelp/android/l/i;->b:Z

    .line 110
    iput v0, p0, Lcom/yelp/android/l/i;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/yelp/android/l/i;->c:I

    .line 125
    iput-boolean v0, p0, Lcom/yelp/android/l/i;->b:Z

    .line 126
    iget-object v0, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v0}, Lcom/yelp/android/l/h;->b(Lcom/yelp/android/l/h;)V

    .line 127
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/yelp/android/l/i;->b:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/l/i;->b:Z

    .line 118
    iget-object v0, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v0}, Lcom/yelp/android/l/h;->a(Lcom/yelp/android/l/h;)Landroid/support/v4/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v0}, Lcom/yelp/android/l/h;->a(Lcom/yelp/android/l/h;)Landroid/support/v4/view/ex;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/yelp/android/l/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/l/i;->c:I

    iget-object v1, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v1}, Lcom/yelp/android/l/h;->c(Lcom/yelp/android/l/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v0}, Lcom/yelp/android/l/h;->a(Lcom/yelp/android/l/h;)Landroid/support/v4/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/l/i;->a:Lcom/yelp/android/l/h;

    invoke-static {v0}, Lcom/yelp/android/l/h;->a(Lcom/yelp/android/l/h;)Landroid/support/v4/view/ex;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->b(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/l/i;->a()V

    .line 137
    :cond_1
    return-void
.end method
