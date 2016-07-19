.class final Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;
.super Ljava/lang/Object;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/TextView;

.field D:Landroid/widget/TextView;

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

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/view/ViewStub;

.field x:Lcom/yelp/android/ui/widgets/WebImageView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    .line 174
    const v0, 0x7f0f045a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->a:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0f045b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->b:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0f0456

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0f0457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/CompassIndicator;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    .line 178
    const v0, 0x7f0f0460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->m:Landroid/view/ViewStub;

    .line 179
    const v0, 0x7f0f0453

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 180
    const v0, 0x7f0f0462

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->j:Landroid/view/ViewStub;

    .line 181
    const v0, 0x7f0f0463

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->w:Landroid/view/ViewStub;

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f045c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f0458

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f045d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f045f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f0459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f0455

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v1, 0x7f0f00f7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    const v0, 0x7f0f03c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->m:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f051a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->o:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f051b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->p:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f051c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->q:Landroid/widget/TextView;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->w:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f025a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f025c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->y:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0250

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->z:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f04fa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->A:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f04fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->B:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f043c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->C:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0444

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->D:Landroid/widget/TextView;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method
