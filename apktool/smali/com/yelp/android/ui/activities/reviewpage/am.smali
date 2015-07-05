.class public final Lcom/yelp/android/ui/activities/reviewpage/am;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"


# instance fields
.field public final a:Z

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field private final p:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    .line 352
    const v0, 0x7f0c0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->b:Landroid/view/View;

    .line 353
    const v0, 0x7f0c0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->c:Landroid/widget/ImageView;

    .line 354
    const v0, 0x7f0c0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->d:Landroid/widget/TextView;

    .line 355
    const v0, 0x7f0c0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->e:Landroid/widget/TextView;

    .line 356
    const v0, 0x7f0c0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f0c0296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f0c034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 360
    const v0, 0x7f0c0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->j:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f0c0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->k:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f0c0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->l:Landroid/widget/TextView;

    .line 363
    const v0, 0x7f0c0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->m:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f0c0416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f0c0418

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->o:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0c0367

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->p:Landroid/view/View;

    .line 367
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/am;)Landroid/view/View;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->p:Landroid/view/View;

    return-object v0
.end method
