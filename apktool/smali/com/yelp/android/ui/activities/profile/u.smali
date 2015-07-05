.class Lcom/yelp/android/ui/activities/profile/u;
.super Ljava/lang/Object;
.source "UserCheckInAdapter.java"


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field final b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/ImageView;

.field final g:Landroid/widget/TextView;

.field final h:Landroid/widget/TextView;

.field final i:Landroid/widget/TextView;

.field final j:Lcom/yelp/android/ui/widgets/WebImageView;

.field final synthetic k:Lcom/yelp/android/ui/activities/profile/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/profile/t;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/u;->k:Lcom/yelp/android/ui/activities/profile/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const v0, 0x7f0c0339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 127
    const v0, 0x7f0c0393

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 128
    const v0, 0x7f0c009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->c:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c0390

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->d:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c0392

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0c0391

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->e:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c038f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->f:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0c040a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->h:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0c02eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->i:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0c0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/u;->j:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 136
    return-void
.end method
