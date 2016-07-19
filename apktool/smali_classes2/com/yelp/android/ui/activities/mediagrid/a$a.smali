.class Lcom/yelp/android/ui/activities/mediagrid/a$a;
.super Ljava/lang/Object;
.source "MediaGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->a:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0f05d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->b:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0f0555

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->c:Landroid/view/View;

    .line 111
    const v0, 0x7f0f0556

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->d:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/mediagrid/a$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Media;Z)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 118
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->b:Landroid/widget/ImageView;

    instance-of v0, p1, Lcom/yelp/android/serializable/Video;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->d()I

    move-result v3

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a$a;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void

    :cond_1
    move v0, v2

    .line 118
    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/a$a;Lcom/yelp/android/serializable/Media;Z)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/a$a;->a(Lcom/yelp/android/serializable/Media;Z)V

    return-void
.end method
