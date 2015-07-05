.class final Lcom/yelp/android/ui/activities/reviewpage/bh;
.super Ljava/lang/Object;
.source "TipAdapter.java"


# instance fields
.field a:Lcom/yelp/android/ui/widgets/WebImageView;

.field b:Lcom/yelp/android/ui/widgets/WebImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field i:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const v0, 0x7f0c0445

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 299
    const v0, 0x7f0c0448

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 300
    const v0, 0x7f0c0449

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->c:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0c0446

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->e:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->d:Landroid/widget/Button;

    .line 303
    const v0, 0x7f0c0447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->f:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0c0443

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0c0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 306
    const v0, 0x7f0c00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->i:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 307
    const v0, 0x7f0c04b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->j:Landroid/view/View;

    .line 308
    const v0, 0x7f0c04b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->k:Landroid/view/View;

    .line 309
    const v0, 0x7f0c044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bh;->l:Landroid/view/View;

    .line 310
    return-void
.end method
