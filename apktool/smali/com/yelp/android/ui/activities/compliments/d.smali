.class Lcom/yelp/android/ui/activities/compliments/d;
.super Ljava/lang/Object;
.source "ComplimentAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Lcom/yelp/android/ui/widgets/WebImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/TextView;

.field i:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const v0, 0x7f0c0249

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->a:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f0c024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->b:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 182
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->d:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0c00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->e:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0c0245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->f:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0c00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->g:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0c0247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->h:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0c0248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/d;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 188
    return-void
.end method
