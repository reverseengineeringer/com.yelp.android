.class final Lcom/yelp/android/ui/panels/businesssearch/e;
.super Ljava/lang/Object;
.source "BusinessAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/view/ViewStub;

.field k:Lcom/yelp/android/ui/widgets/CompassIndicator;

.field l:Landroid/widget/TextView;

.field m:Landroid/view/ViewStub;

.field n:Landroid/widget/RelativeLayout;

.field o:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/ImageView;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field t:Landroid/widget/ImageView;

.field u:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    .line 150
    const v0, 0x7f0c037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->a:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0c037d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->b:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0c0378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0c0379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/CompassIndicator;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    .line 154
    const v0, 0x7f0c0382

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->m:Landroid/view/ViewStub;

    .line 155
    const v0, 0x7f0c0375

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 156
    const v0, 0x7f0c0384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->j:Landroid/view/ViewStub;

    .line 157
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c037e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c0380

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c0381

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c037b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c0377

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v1, 0x7f0c00ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    const v0, 0x7f0c0386

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 172
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->m:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0432

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->o:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0433

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->p:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0434

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->q:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->j:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/e;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method
