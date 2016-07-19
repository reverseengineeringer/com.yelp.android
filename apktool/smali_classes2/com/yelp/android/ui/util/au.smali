.class public abstract Lcom/yelp/android/ui/util/au;
.super Ljava/lang/Object;
.source "WebImageViewHolder.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yelp/android/ui/widgets/WebImageView;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ui/util/au;->a:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;->a()V

    .line 22
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Photo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 26
    const-string/jumbo v0, "You cannot instantiate a WebImageViewHolder with a null View"

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez v0, :cond_1

    .line 30
    const-string/jumbo v0, "You cannot instantiate a WebImageViewHolder with an invalid WebImageView resource ID"

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/e;)V
    .locals 1

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/yelp/android/serializable/e;->e()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/au;->a(Lcom/yelp/android/serializable/Photo;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/au;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/au;->c:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/au;->c:Ljava/lang/String;

    const v2, 0x7f0200c6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 55
    :cond_1
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->a:Landroid/view/View;

    return-object v0
.end method

.method public c()Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/util/au;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method
