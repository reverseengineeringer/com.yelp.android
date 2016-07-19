.class public Lcom/yelp/android/cg/c;
.super Lcom/yelp/android/cg/f;
.source "FeedBusinessItemViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yelp/android/cg/f;-><init>(Landroid/view/View;)V

    .line 28
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/c;->a:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0f0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/cg/c;->b:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0f03cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/c;->c:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0f03c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/cg/c;->d:Landroid/widget/ToggleButton;

    .line 32
    iget-object v1, p0, Lcom/yelp/android/cg/c;->d:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 33
    return-void

    .line 32
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/cg/c;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/cg/c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/cg/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/cg/c;->c:Landroid/widget/TextView;

    const v1, 0x7f080025

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/cg/c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/cg/c;->d:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 46
    return-void
.end method
