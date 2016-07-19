.class public Lcom/yelp/android/cg/e;
.super Lcom/yelp/android/cg/f;
.source "FeedEventItemViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yelp/android/cg/f;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f0f04b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/e;->a:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0f0399

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/e;->b:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0f04b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/cg/e;->c:Landroid/widget/ImageView;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/cg/e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/cg/e;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/yelp/android/serializable/Event;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/cg/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 35
    return-void
.end method
