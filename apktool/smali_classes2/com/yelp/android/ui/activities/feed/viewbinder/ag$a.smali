.class Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;
.super Ljava/lang/Object;
.source "YnraFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/yelp/android/ui/activities/reviews/StarsView;

.field private final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x7f0f040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->c:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0f0411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0f0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->b:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0f0410

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->d:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0f0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 70
    const v0, 0x7f0f0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->f:Landroid/view/View;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 78
    const-class v0, Lcom/yelp/android/serializable/FeedYnraActivity;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedYnraActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedYnraActivity;->d()Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    const v2, 0x7f0200bb

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 87
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$b;)V

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->f:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$2;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)Lcom/yelp/android/ui/activities/reviews/StarsView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->e:Lcom/yelp/android/ui/activities/reviews/StarsView;

    return-object v0
.end method
