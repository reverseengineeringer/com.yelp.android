.class Lcom/yelp/android/ui/activities/talk/x;
.super Ljava/lang/Object;
.source "TalkTopicAdapter.java"


# instance fields
.field public final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field final synthetic g:Lcom/yelp/android/ui/activities/talk/w;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/w;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/x;->g:Lcom/yelp/android/ui/activities/talk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f0c0246

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 28
    const v0, 0x7f0c0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->b:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0c032e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->c:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c0441

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->d:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0c043f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->e:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0c0440

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/x;->f:Landroid/widget/TextView;

    .line 33
    return-void
.end method
