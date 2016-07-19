.class Lcom/yelp/android/ui/activities/profile/c$a;
.super Ljava/lang/Object;
.source "ReviewDraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->a:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->b:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->c:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->d:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->e:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0f0422

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->f:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0f048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->g:Landroid/widget/TextView;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/c$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/c$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/ReviewDraft;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f020239

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0703f6

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewDraft;->h()Ljava/util/Date;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewDraft;->a()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 87
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewDraft;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/c$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewDraft;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/c$a;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewDraft;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/c$a;Lcom/yelp/android/serializable/ReviewDraft;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/c$a;->a(Lcom/yelp/android/serializable/ReviewDraft;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V

    return-void
.end method
