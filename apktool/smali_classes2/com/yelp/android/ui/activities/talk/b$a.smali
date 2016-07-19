.class final Lcom/yelp/android/ui/activities/talk/b$a;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final synthetic d:Lcom/yelp/android/ui/activities/talk/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/talk/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b$a;->d:Lcom/yelp/android/ui/activities/talk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const v0, 0x7f0f025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 330
    const v0, 0x7f0f0479

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0f0360

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$a;->c:Landroid/widget/TextView;

    .line 332
    return-void
.end method
