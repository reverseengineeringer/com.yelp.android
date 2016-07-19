.class Lcom/yelp/android/ui/activities/profile/f$a;
.super Ljava/lang/Object;
.source "UserCheckInAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


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

.field final synthetic k:Lcom/yelp/android/ui/activities/profile/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/profile/f;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/f$a;->k:Lcom/yelp/android/ui/activities/profile/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const v0, 0x7f0f03de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 138
    const v0, 0x7f0f03dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 139
    const v0, 0x7f0f00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->c:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0f046d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->d:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0f046f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0f046e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->e:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0f046c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->f:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0f04f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->h:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0f0360

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->i:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0f0158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f$a;->j:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 147
    return-void
.end method
