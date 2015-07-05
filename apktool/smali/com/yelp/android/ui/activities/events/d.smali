.class Lcom/yelp/android/ui/activities/events/d;
.super Ljava/lang/Object;
.source "EventAdapter.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const v0, 0x7f0c0311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 208
    const v0, 0x7f0c0312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0c0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0c03b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->d:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0c0452

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->e:Landroid/widget/TextView;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/events/c;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/d;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/widgets/RoundedImageView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/events/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d;->e:Landroid/widget/TextView;

    return-object v0
.end method
