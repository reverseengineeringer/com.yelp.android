.class public final Lcom/yelp/android/ui/activities/friendcheckins/b;
.super Ljava/lang/Object;
.source "CheckInsNearbyAdapter.java"


# instance fields
.field public final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/TextView;

.field public final l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field public final m:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const v0, 0x7f0c032d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->b:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0c038a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 245
    const v0, 0x7f0c038b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->c:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0c038e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->d:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0c038d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->e:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0c038c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->f:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0c03dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->g:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0c0390

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->h:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0c0391

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->i:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0c038f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->j:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f0c0392

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->k:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0c0339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 255
    const v0, 0x7f0c0393

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->m:Landroid/view/View;

    .line 256
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->a(I)V

    .line 257
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 261
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 265
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 276
    if-ne p1, v2, :cond_3

    .line 277
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/b;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 280
    :cond_3
    return-void
.end method
