.class Lcom/yelp/android/ui/activities/talk/d$a;
.super Ljava/lang/Object;
.source "TalkTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field final synthetic g:Lcom/yelp/android/ui/activities/talk/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/d;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/d$a;->g:Lcom/yelp/android/ui/activities/talk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7f0f025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 29
    const v0, 0x7f0f00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->b:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0f052b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->c:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0f052a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->d:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0f0528

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->e:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0f0529

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/d$a;->f:Landroid/widget/TextView;

    .line 34
    return-void
.end method
