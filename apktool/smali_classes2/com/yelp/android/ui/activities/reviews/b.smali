.class public Lcom/yelp/android/ui/activities/reviews/b;
.super Lcom/yelp/android/ui/activities/reviewpage/c;
.source "ReviewAdapterTiny.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b;->a:Ljava/util/Set;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/b;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/reviews/b$a;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 91
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/b;Lcom/yelp/android/ui/activities/reviews/b$a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b$a;)V

    return-void
.end method

.method private b(Lcom/yelp/android/ui/activities/reviews/b$a;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 96
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/b;Lcom/yelp/android/ui/activities/reviews/b$a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/b;->b(Lcom/yelp/android/ui/activities/reviews/b$a;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030146

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/b$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviews/b$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/b$a;

    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviews/b;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 52
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 54
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200c7

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 55
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/b;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/b;->b(Lcom/yelp/android/ui/activities/reviews/b$a;)V

    .line 66
    :goto_0
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->e:Landroid/widget/TextView;

    new-instance v4, Lcom/yelp/android/ui/activities/reviews/b$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/yelp/android/ui/activities/reviews/b$1;-><init>(Lcom/yelp/android/ui/activities/reviews/b;Ljava/lang/Integer;Lcom/yelp/android/ui/activities/reviews/b$a;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->W()Ljava/util/Date;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/b$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviews/b;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 86
    return-object p2

    .line 61
    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b$a;)V

    goto :goto_0
.end method
