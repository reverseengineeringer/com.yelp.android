.class public final Lcom/yelp/android/ui/activities/friendcheckins/a$a;
.super Ljava/lang/Object;
.source "CheckInsNearbyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friendcheckins/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const v0, 0x7f0f03cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->b:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0f0467

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 256
    const v0, 0x7f0f0468

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->c:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0f046b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->d:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0f046a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->e:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0f0469

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->f:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0f04c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->g:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0f046d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->h:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0f046e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->i:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0f046c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->j:Landroid/widget/ImageView;

    .line 264
    const v0, 0x7f0f046f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0f03de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 266
    const v0, 0x7f0f03dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->m:Landroid/view/View;

    .line 267
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->a(I)V

    .line 268
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 272
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 276
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 277
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 287
    if-ne p1, v2, :cond_3

    .line 288
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 291
    :cond_3
    return-void
.end method
