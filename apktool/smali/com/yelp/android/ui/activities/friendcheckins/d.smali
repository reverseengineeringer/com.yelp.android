.class final Lcom/yelp/android/ui/activities/friendcheckins/d;
.super Ljava/lang/Object;
.source "CommentAdapter.java"


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/d;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 74
    const v0, 0x7f0c039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/d;->b:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c02eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/d;->c:Landroid/widget/TextView;

    .line 76
    return-void
.end method
