.class public Lcom/yelp/android/ui/activities/feed/au;
.super Lcom/yelp/android/ui/activities/feed/c;
.source "FeedViewHolder.java"


# instance fields
.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/RelativeLayout;

.field public o:Landroid/view/ViewStub;

.field public p:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/c;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 29
    const v0, 0x7f0c0347

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 30
    const v0, 0x7f0c0349

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->b:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0c034a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->c:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0c032d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->d:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0c034d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->e:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0c02ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->k:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/au;->l:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/au;->m:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/au;->n:Landroid/widget/RelativeLayout;

    .line 38
    const v0, 0x7f0c03de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->o:Landroid/view/ViewStub;

    .line 39
    const v0, 0x7f0c03e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->p:Landroid/view/ViewStub;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/au;->g:Landroid/util/SparseArray;

    .line 41
    return-void
.end method
