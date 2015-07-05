.class final Lcom/yelp/android/ui/activities/talk/u;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final synthetic d:Lcom/yelp/android/ui/activities/talk/q;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/talk/q;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/u;->d:Lcom/yelp/android/ui/activities/talk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const v0, 0x7f0c0246

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/u;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 323
    const v0, 0x7f0c039a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0c02eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/u;->c:Landroid/widget/TextView;

    .line 325
    return-void
.end method
